import { Hono } from 'hono';

const app = new Hono();

app.get('/:key', async (c) => {
    let key = c.req.param('key');
    try {
        key = decodeURIComponent(key);
        const object = await c.env.STORAGE.get(key);
        if (!object) {
            return c.json({ error: "Image not found" }, 404);
        }

        const headers = new Headers();
        object.writeHttpMetadata(headers);
        headers.set("etag", object.httpEtag);

        if (!headers.has("content-type")) {
            const ext = key.split('.').pop()?.toLowerCase();
            let cType = "image/jpeg";
            if (ext === "png") cType = "image/png";
            if (ext === "svg") cType = "image/svg+xml";
            headers.set("content-type", cType);
        }

        headers.set("Cache-Control", "public, max-age=31536000, immutable");

        return new Response(object.body, { headers });
    } catch (err) {
        return c.json({ error: "Error fetching image" }, 500);
    }
});

export default app;
