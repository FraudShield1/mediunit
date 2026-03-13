import { verifyJWT } from '../utils/helpers.js';

export const authMiddleware = async (c, next) => {
    // Attempt to extract JWT from multiple sources: Check cookies, then Authorization header
    let tokenStr;

    // 1. Check Cookies
    const cookieHeader = c.req.header('Cookie');
    if (cookieHeader) {
        const match = cookieHeader.match(/token=([^;]+)/);
        if (match) tokenStr = match[1];
    }

    // 2. Fallback to Authorization Bearer token
    if (!tokenStr) {
        const authHeader = c.req.header('Authorization');
        if (authHeader && authHeader.startsWith('Bearer ')) {
            tokenStr = authHeader.split(' ')[1];
        }
    }

    if (!tokenStr) {
        return c.json({ error: "Unauthorized: Missing token" }, 401);
    }

    try {
        const decoded = await verifyJWT(tokenStr, c.env.JWT_SECRET || 'fallback_secret');
        if (!decoded) {
            return c.json({ error: "Unauthorized: Invalid or expired token" }, 401);
        }
        c.set('user', decoded);
        await next();
    } catch (err) {
        return c.json({ error: "Unauthorized: Invalid or expired token" }, 401);
    }
};

export const optionalAuthMiddleware = async (c, next) => {
    let tokenStr;
    const cookieHeader = c.req.header('Cookie');
    if (cookieHeader) {
        const match = cookieHeader.match(/token=([^;]+)/);
        if (match) tokenStr = match[1];
    }
    if (!tokenStr) {
        const authHeader = c.req.header('Authorization');
        if (authHeader && authHeader.startsWith('Bearer ')) {
            tokenStr = authHeader.split(' ')[1];
        }
    }

    if (tokenStr) {
        try {
            const decoded = await verifyJWT(tokenStr, c.env.JWT_SECRET || 'fallback_secret');
            if (decoded) {
                c.set('user', decoded);
            }
        } catch (err) {
            // Silently fail for optional auth
        }
    }
    await next();
};

export const adminOnly = async (c, next) => {
    const user = c.get('user');
    if (!user || user.role !== 'admin') {
        return c.json({ error: "Forbidden: Admin access required" }, 403);
    }
    await next();
};
