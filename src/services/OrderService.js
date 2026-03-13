import { OrderRepository } from '../repositories/OrderRepository.js';
import { ProductRepository } from '../repositories/ProductRepository.js';

export class OrderService {
    constructor(db, env) {
        this.orderRepository = new OrderRepository(db);
        this.productRepository = new ProductRepository(db);
        this.env = env;
    }

    async processCheckout(items, shipping, user) {
        let subtotal = 0;
        let itemCount = 0;
        const itemsWithPrice = [];

        // 1. Validate Items & Stock
        for (const item of items) {
            const product = await this.productRepository.findBySlugOrId(item.product_id);
            if (!product) {
                throw new Error(`Produit introuvable: ${item.product_id}`);
            }
            if (item.quantity > (product.stock_quantity || 0)) {
                throw new Error(`Stock insuffisant pour ${product.name}. Disponible: ${product.stock_quantity || 0}`);
            }

            const priceResult = product.base_unit_price;
            subtotal += priceResult * item.quantity;
            itemCount += item.quantity;
            itemsWithPrice.push({ ...item, price: priceResult, name: product.name });
        }

        if (itemsWithPrice.length === 0) {
            throw new Error("Le panier est vide.");
        }

        // 2. Calculate Discounts & VAT
        const vatSetting = await this.env.DB.prepare("SELECT value FROM settings WHERE key = 'vat_rate'").first();
        const vatRate = vatSetting ? parseFloat(vatSetting.value) / 100 : 0.20;

        let total = subtotal;
        if (itemCount >= 50) total = subtotal * 0.8;
        else if (itemCount >= 10) total = subtotal * 0.9;

        total = total * (1 + vatRate);

        // 3. Persist Order Transactionally (using the Repository)
        const addrId = await this.orderRepository.createAddress(shipping);
        const orderId = await this.orderRepository.createOrder(total, addrId, user?.sub || null);
        await this.orderRepository.createOrderItemsBatch(orderId, itemsWithPrice);

        return { orderId, total, itemsWithPrice };
    }
}
