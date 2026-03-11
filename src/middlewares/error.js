/**
 * Central Error Handler for Hono Application
 */
export const errorHandler = async (err, c) => {
    console.error("Global Error Captured:", err);

    if (err.name === 'JwtTokenExpired') {
        return c.json({ error: 'Session expired. Please login again.' }, 401);
    }
    
    if (err.status) {
        // HTTP Exception from Hono (e.g., c.json(..., 404))
        return c.json({ error: err.message }, err.status);
    }

    // Default to 500
    const statusCode = 500;
    const body = {
        error: "Internal Server Error",
        message: err.message || "An unexpected error occurred.",
    };

    // Optionally leak stack traces only in non-production
    if (c.env && c.env.ENVIRONMENT !== 'production') {
        body.stack = err.stack;
    }

    return c.json(body, statusCode);
};

export const notFoundHandler = (c) => {
    return c.json({ error: `Not Found: ${c.req.url}` }, 404);
};
