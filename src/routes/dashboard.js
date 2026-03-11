import { Hono } from 'hono';

const app = new Hono();

const adminOnly = async (c, next) => {
    const user = c.get('user');
    if (!user || user.role !== 'admin') {
        return c.json({ error: "Forbidden: Admin access required" }, 403);
    }
    await next();
};

app.get('/compliance', async (c) => {
    const user = c.get('user');
    const results = await c.env.DB.prepare(`
        SELECT DISTINCT b.name, b.ce_certificate_url as download_url, 'CE Certificate' as type
        FROM "order" o
        JOIN order_item oi ON o.id = oi.order_id
        JOIN product p ON oi.product_id = p.id
        JOIN brand b ON p.brand_id = b.id
        WHERE o.user_id = ? AND b.ce_certificate_url IS NOT NULL
    `).bind(user.sub).all();

    return c.json(results.results || [], 200);
});

app.get('/', async (c) => {
    const authUser = c.get('user');
    let recent_orders = [];
    let analytics = { total_spent: '0.00', last_order_date: null };

    if (authUser) {
        const { results } = await c.env.DB.prepare(
            "SELECT * FROM \"order\" WHERE user_id = ? ORDER BY created_at DESC LIMIT 10"
        ).bind(authUser.sub).all();
        recent_orders = results;
        const agg = await c.env.DB.prepare(
            "SELECT SUM(total_amount) as total, MAX(created_at) as last FROM \"order\" WHERE user_id = ?"
        ).bind(authUser.sub).first();
        analytics = { total_spent: (agg?.total || 0).toFixed(2), last_order_date: agg?.last || null };
    }

    const stats = (authUser && authUser.role === 'admin')
        ? await c.env.DB.prepare("SELECT COUNT(*) as count, SUM(total_amount) as total FROM \"order\"").first()
        : null;
    return c.json({ recent_orders, analytics, stats }, 200);
});

app.get('/admin/summary', adminOnly, async (c) => {
    const stats = await c.env.DB.prepare("SELECT COUNT(*) as count, SUM(total_amount) as total FROM \"order\"").first();
    const byStatus = await c.env.DB.prepare("SELECT status, COUNT(*) as count FROM \"order\" GROUP BY status").all();
    const pendingVerifications = await c.env.DB.prepare("SELECT COUNT(*) as count FROM user WHERE verification_status = 'pending'").first();
    const lowStock = await c.env.DB.prepare("SELECT COUNT(*) as count FROM product WHERE stock_quantity <= 5").first();
    const recentOrders = await c.env.DB.prepare(`
        SELECT o.*, u.email as user_email, u.clinic_name as user_clinic_name
        FROM "order" o
        LEFT JOIN user u ON o.user_id = u.id
        ORDER BY o.created_at DESC
        LIMIT 5
    `).all();

    return c.json({
        stats,
        by_status: byStatus.results || [],
        pending_verifications: pendingVerifications?.count || 0,
        low_stock_count: lowStock?.count || 0,
        recent_orders: recentOrders.results || []
    }, 200);
});

export default app;
