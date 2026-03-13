export class ProductRepository {
    constructor(db) {
        this.db = db;
    }

    async findAll({ limit = 50, offset = 0, categorySlug = null, search = null }) {
        let sql = `
            SELECT p.*, c.name as category_name, c.name_en as category_name_en, c.slug as category_slug, b.name as brand_name
            FROM product p
            LEFT JOIN category c ON p.category_id = c.id
            LEFT JOIN brand b ON p.brand_id = b.id
            WHERE 1=1
        `;
        const params = [];

        if (categorySlug) {
            sql += " AND c.slug = ?";
            params.push(categorySlug);
        }
        if (search) {
            sql += " AND (p.name LIKE ? OR p.sku LIKE ? OR p.name_en LIKE ?)";
            params.push(`%${search}%`, `%${search}%`, `%${search}%`);
        }

        sql += " ORDER BY p.popularity DESC LIMIT ? OFFSET ?";
        params.push(limit, offset);

        const { results } = await this.db.prepare(sql).bind(...params).all();
        return results;
    }

    async findBySlugOrId(identifier) {
        let product = await this.db.prepare(`
            SELECT p.*, c.name as category_name, c.name_en as category_name_en, c.slug as category_slug, 
                   b.name as brand_name, b.manufacturer as brand_manufacturer,
                   b.ce_certificate_url as brand_ce_cert_url
            FROM product p 
            LEFT JOIN category c ON p.category_id = c.id 
            LEFT JOIN brand b ON p.brand_id = b.id 
            WHERE p.slug = ? OR CAST(p.id AS TEXT) = ?
        `).bind(identifier, identifier).first();

        // Modernization Fallback: Try hyphenation variations if not found
        if (!product && typeof identifier === 'string') {
            const normalizedSlug = identifier.replace(/-/g, '');
            product = await this.db.prepare(`
                SELECT p.*, c.name as category_name, c.name_en as category_name_en, c.slug as category_slug, 
                       b.name as brand_name, b.manufacturer as brand_manufacturer,
                       b.ce_certificate_url as brand_ce_cert_url
                FROM product p 
                LEFT JOIN category c ON p.category_id = c.id 
                LEFT JOIN brand b ON p.brand_id = b.id 
                WHERE REPLACE(p.slug, '-', '') = ? 
                   OR p.slug = ?
                   OR p.slug = ?
                LIMIT 1
            `).bind(
                normalizedSlug.replace('multitailles', ''), 
                identifier.replace(/-multi-tailles$/, ''),
                identifier.replace('sonde-d-intubation', 'sonde-dintubation')
            ).first();
        }

        return product;
    }

    async findBySlugFuzzy(identifier) {
        // Try exact name match or slugified name match
        const slugified = identifier.toLowerCase().replace(/[^a-z0-9]+/g, '-');
        
        let product = await this.db.prepare(`
            SELECT p.*, c.name as category_name, c.name_en as category_name_en, c.slug as category_slug, 
                   b.name as brand_name
            FROM product p 
            LEFT JOIN category c ON p.category_id = c.id 
            LEFT JOIN brand b ON p.brand_id = b.id 
            WHERE p.name = ? OR p.name_en = ? 
               OR p.slug = ?
               OR LOWER(p.name) LIKE ? OR LOWER(p.name_en) LIKE ?
            LIMIT 1
        `).bind(identifier, identifier, slugified, `%${identifier.replace(/-/g, ' ')}%`, `%${identifier.replace(/-/g, ' ')}%`).first();

        if (product) return product;

        // Then try fuzzy slug
        const normalized = identifier.replace(/-/g, '%');
        return await this.db.prepare(`
            SELECT p.*, c.name as category_name, c.name_en as category_name_en, c.slug as category_slug, 
                   b.name as brand_name
            FROM product p 
            LEFT JOIN category c ON p.category_id = c.id 
            LEFT JOIN brand b ON p.brand_id = b.id 
            WHERE p.slug LIKE ? OR p.slug LIKE ?
               OR p.name_en LIKE ?
            LIMIT 1
        `).bind(`%${identifier}%`, `%${normalized}%`, `%${identifier.replace(/-/g, ' ')}%`).first();
    }

    async updateStock(productId, quantityToSubtract) {
        return await this.db.prepare(
            "UPDATE product SET stock_quantity = stock_quantity - ? WHERE id = ?"
        ).bind(quantityToSubtract, productId).run();
    }

    async create(body) {
        const id = body.id || Math.floor(Math.random() * 1000000);
        const slug = body.name.toLowerCase().replace(/[^a-z0-9]+/g, '-');
        await this.db.prepare(`
            INSERT INTO product (id, name, name_en, slug, sku, description, description_en, base_unit_price, popularity, stock_quantity, category_id, brand_id, specifications, packaging_type, image_url)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `).bind(
            id, body.name, body.name_en || '', slug, body.sku || '', body.description || '', body.description_en || '', body.base_unit_price || 0,
            body.popularity || 0, body.stock || 100, body.category_id || 1, body.brand_id || 1,
            body.specifications || '{}', body.packaging_type || 'Unité', body.image_url || ''
        ).run();
        return id;
    }

    async update(id, body) {
        await this.db.prepare(`
            UPDATE product 
            SET name = ?, sku = ?, base_unit_price = ?, stock_quantity = ?, category_id = ?, brand_id = ?, description = ?, specifications = ?, packaging_type = ?, image_url = ?, name_en = ?, description_en = ?
            WHERE id = ?
        `).bind(
            body.name || '', body.sku ?? null, body.base_unit_price ?? 0, body.stock_quantity ?? (body.stock ?? 100),
            body.category_id ?? 1, body.brand_id ?? 1, body.description || '',
            body.specifications || '{}', body.packaging_type || 'Unité', body.image_url || '',
            body.name_en ?? null, body.description_en ?? null,
            id
        ).run();
    }

    async deleteById(id) {
        await this.db.prepare("DELETE FROM product WHERE id = ?").bind(id).run();
    }
}
