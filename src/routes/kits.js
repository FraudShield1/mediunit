import { Hono } from 'hono';

const app = new Hono();

app.get('/', async (c) => {
    const { results } = await c.env.DB.prepare("SELECT * FROM kit").all();
    return c.json(results, 200);
});

app.get('/:slug', async (c) => {
    const slug = c.req.param('slug');
    const kit = await c.env.DB.prepare("SELECT * FROM kit WHERE slug = ?").bind(slug).first();
    
    if (!kit) {
        return c.json({ error: "Not Found" }, 404);
    }

    const { results: items } = await c.env.DB.prepare(`
        SELECT ki.default_quantity, p.* 
        FROM kit_item ki 
        JOIN product p ON ki.product_id = p.id 
        WHERE ki.kit_id = ?
    `).bind(kit.id).all();

    return c.json({ ...kit, items }, 200);
});

export default app;
