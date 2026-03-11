// We can reuse the existing `isRateLimited` logic from helpers by exporting it here 
// or creating a distinct Hono Rate Limit middleware.

/**
 * A basic Hono middleware for Rate Limiting
 */
export const rateLimitMiddleware = (limit = 100, windowInSeconds = 60, prefix = 'global') => {
    return async (c, next) => {
        const ip = c.req.header('cf-connecting-ip') || 'local';
        const key = `rl:${prefix}:${ip}`;
        
        try {
            // Using D1 as a KV store for rate limiting (lightweight fallback)
            // In a true production environment, Cloudflare Rate Limiting Rules or KV are better.
            const result = await c.env.DB.prepare(
                "SELECT count, timestamp FROM rate_limits WHERE key = ?"
            ).bind(key).first();

            const now = Math.floor(Date.now() / 1000);

            if (!result) {
                await c.env.DB.prepare(
                    "INSERT INTO rate_limits (key, count, timestamp) VALUES (?, 1, ?)"
                ).bind(key, now).run();
            } else {
                if (now - result.timestamp < windowInSeconds) {
                    if (result.count >= limit) {
                        return c.json({ error: "Too Many Requests. Please try again later." }, 429);
                    }
                    await c.env.DB.prepare(
                        "UPDATE rate_limits SET count = count + 1 WHERE key = ?"
                    ).bind(key).run();
                } else {
                    await c.env.DB.prepare(
                        "UPDATE rate_limits SET count = 1, timestamp = ? WHERE key = ?"
                    ).bind(now, key).run();
                }
            }
        } catch (e) {
            // Failsafe: if rate-limiting table doesn't exist yet, just continue.
            console.warn("Rate limit check failed, proceeding via failsafe.", e.message);
        }

        await next();
    };
};
