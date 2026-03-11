import { Hono } from 'hono';

const app = new Hono();

app.get('/', async (c) => {
    const { results } = await c.env.DB.prepare("SELECT * FROM brand").all();
    return c.json(results, 200);
});

const adminOnly = async (c, next) => {
    const user = c.get('user'); // Assuming we mount it within auth middleware where needed
    if (!user || user.role !== 'admin') {
        return c.json({ error: "Forbidden: Admin access required" }, 403);
    }
    await next();
};

app.post('/', adminOnly, async (c) => {
    const body = await c.req.json();
    const id = body.id || Math.floor(Math.random() * 1000000);
    await c.env.DB.prepare(
        "INSERT INTO brand (id, name, logo_url, manufacturer, notes, ce_certificate_url) VALUES (?, ?, ?, ?, ?, ?)"
    ).bind(
        id,
        body.name || '',
        body.logo_url || '',
        body.manufacturer || '',
        body.notes || '',
        body.ce_certificate_url || ''
    ).run();
    return c.json({ success: true, id }, 200);
});

app.put('/:id', adminOnly, async (c) => {
    const brandId = c.req.param('id');
    const body = await c.req.json();
    await c.env.DB.prepare("UPDATE brand SET name = ?, logo_url = ?, manufacturer = ?, notes = ?, ce_certificate_url = ? WHERE id = ?")
        .bind(body.name, body.logo_url, body.manufacturer, body.notes, body.ce_certificate_url, brandId)
        .run();
    return c.json({ success: true }, 200);
});

app.delete('/:id', adminOnly, async (c) => {
    const brandId = c.req.param('id');
    await c.env.DB.prepare("DELETE FROM brand WHERE id = ?").bind(brandId).run();
    return c.json({ success: true }, 200);
});

export default app;
