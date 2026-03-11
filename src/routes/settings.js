import { Hono } from 'hono';

const app = new Hono();

const adminOnly = async (c, next) => {
    const user = c.get('user');
    if (!user || user.role !== 'admin') {
        return c.json({ error: "Forbidden: Admin access required" }, 403);
    }
    await next();
};

app.get('/public', async (c) => {
    const publicKeys = ['whatsapp_number', 'support_email', 'shipping_standard', 'shipping_free_threshold', 'vat_rate', 'banner_text'];
    const { results } = await c.env.DB.prepare(`SELECT key, value FROM settings WHERE key IN (${publicKeys.map(k => `'${k}'`).join(',')})`).all();
    const settingsMap = results.reduce((acc, curr) => ({ ...acc, [curr.key]: curr.value }), {});
    return c.json(settingsMap, 200);
});

app.get('/admin', adminOnly, async (c) => {
    const { results } = await c.env.DB.prepare("SELECT key, value, updated_at FROM settings").all();
    return c.json(results, 200);
});

app.patch('/admin', adminOnly, async (c) => {
    const body = await c.req.json();
    const { updates } = body;
    for (const upd of updates) {
        await c.env.DB.prepare("UPDATE settings SET value = ?, updated_at = CURRENT_TIMESTAMP WHERE key = ?").bind(upd.value, upd.key).run();
    }
    return c.json({ success: true }, 200);
});

export default app;
