export class OrderRepository {
    constructor(db) {
        this.db = db;
    }

    async findAll({ status, q, limit = 200, offset = 0 }) {
        let sql = `
            SELECT o.*, u.email as user_email, u.clinic_name as user_clinic_name
            FROM "order" o
            LEFT JOIN user u ON o.user_id = u.id
            WHERE 1=1
        `;
        const args = [];

        if (status) {
            sql += " AND o.status = ?";
            args.push(status);
        }

        if (q) {
            sql += " AND (CAST(o.id AS TEXT) LIKE ? OR u.email LIKE ? OR u.clinic_name LIKE ?)";
            args.push(`%${q}%`, `%${q}%`, `%${q}%`);
        }

        sql += " ORDER BY o.created_at DESC LIMIT ? OFFSET ?";
        args.push(limit, offset);

        const { results } = await this.db.prepare(sql).bind(...args).all();
        return results;
    }

    async findById(id) {
        return await this.db.prepare(`
            SELECT o.*, 
                   a.first_name as shipping_first_name, a.last_name as shipping_last_name, a.phone as shipping_phone,
                   a.street_address as shipping_street_address, a.city as shipping_city, a.zip_code as shipping_zip_code,
                   u.email as user_email, u.clinic_name as user_clinic_name, u.verification_status as user_verification_status
            FROM "order" o
            LEFT JOIN address a ON o.shipping_address_id = a.id
            LEFT JOIN user u ON o.user_id = u.id
            WHERE o.id = ?
        `).bind(id).first();
    }

    async findItemsByOrderId(orderId) {
        const { results } = await this.db.prepare(`
            SELECT oi.*, p.name, p.sku, p.image_url
            FROM order_item oi
            JOIN product p ON oi.product_id = p.id
            WHERE oi.order_id = ?
            ORDER BY oi.id ASC
        `).bind(orderId).all();
        return results;
    }

    async createAddress(shipping) {
        const addrResult = await this.db.prepare(`
            INSERT INTO address (first_name, last_name, phone, street_address, city, zip_code) 
            VALUES (?, ?, ?, ?, ?, ?) RETURNING id
        `).bind(
            shipping.first_name || '',
            shipping.last_name || '',
            shipping.phone || '',
            shipping.address || '',
            shipping.city || 'Casablanca',
            shipping.zip_code || '20000'
        ).first();
        return addrResult.id;
    }

    async createOrder(total, addressId, userId) {
        const orderInsert = await this.db.prepare(`
            INSERT INTO "order" (total_amount, status, shipping_address_id, user_id, created_at) 
            VALUES (?, 'pending', ?, ?, datetime('now')) RETURNING id
        `).bind(total, addressId, userId).first();
        return orderInsert.id;
    }

    async createOrderItemsBatch(orderId, itemsWithPrice) {
        const itemAndStockQueries = [];
        
        for (const item of itemsWithPrice) {
            itemAndStockQueries.push(this.db.prepare(`
                INSERT INTO order_item (order_id, product_id, quantity, price_per_unit_at_purchase, selected_variant) 
                VALUES (?, ?, ?, ?, ?)
            `).bind(orderId, item.product_id, item.quantity, item.price, item.selected_variant || ''));

            itemAndStockQueries.push(this.db.prepare(
                "UPDATE product SET stock_quantity = stock_quantity - ? WHERE id = ?"
            ).bind(item.quantity, item.product_id));
        }

        await this.db.batch(itemAndStockQueries);
    }
}
