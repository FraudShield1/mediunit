import { Hono } from 'hono';

const app = new Hono();

app.get('/', async (c) => {
    const { results } = await c.env.DB.prepare("SELECT * FROM category ORDER BY name ASC").all();
    return c.json(results, 200);
});

export default app;
