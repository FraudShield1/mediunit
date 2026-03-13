import { Hono } from 'hono';
import { cors } from 'hono/cors';

// Middlewares
import { errorHandler, notFoundHandler } from './middlewares/error.js';
import { slugMapping } from './utils/slugMapping.js';
import { rateLimitMiddleware } from './middlewares/rateLimit.js';
import { authMiddleware, optionalAuthMiddleware } from './middlewares/auth.js';

// Routes
import authRoutes from './routes/auth.js';
import userRoutes from './routes/users.js';
import productRoutes from './routes/products.js';
import categoryRoutes from './routes/categories.js';
import brandRoutes from './routes/brands.js';
import kitRoutes from './routes/kits.js';
import dashboardRoutes from './routes/dashboard.js';
import orderRoutes from './routes/orders.js';
import settingsRoutes from './routes/settings.js';
import imageRoutes from './routes/images.js';

const app = new Hono({ strict: false });

// 1. Redirect Middleware for Legacy Product Slugs (Handles singular/plural and localized)
app.use('*', async (c, next) => {
    const url = new URL(c.req.url);
    const path = url.pathname;

    // Singular to Plural /product/ -> /products/
    if (path.startsWith("/product/")) {
        const legacySlug = path.replace("/product/", "").replace(/\/$/, "");
        const newSlug = slugMapping[legacySlug] || legacySlug;
        return c.redirect(`https://mediunit.ma/products/${newSlug}`, 301);
    }

    // Legacy Slugs in /products/ (including /fr/ and /en/ prefixes)
    const productMatch = path.match(/^\/(?:fr|en)?\/?products\/(.+)$/);
    if (productMatch) {
        const slugCandidate = productMatch[1].replace(/\/$/, "");
        const targetSlug = slugMapping[slugCandidate];
        if (targetSlug && targetSlug !== slugCandidate) {
            const langMatch = path.match(/^\/(fr|en)\//);
            const langPrefix = langMatch ? `/${langMatch[1]}` : "";
            return c.redirect(`https://mediunit.ma${langPrefix}/products/${targetSlug}/`, 301);
        }
    }

    // 3. Category Redirects: /category/ -> /categories/ and hyphenation
    const categoryMatch = path.match(/^\/(?:fr|en)?\/?categor(?:ies|y)\/(.+)$/);
    if (categoryMatch) {
        const slugCandidate = categoryMatch[1].replace(/\/$/, "");
        // Standardize category slug (e.g., gants-dexamen -> gants-d-examen)
        const targetSlug = slugMapping[slugCandidate] || slugCandidate;
        const isLegacyPath = path.includes("/category/");
        
        if (targetSlug !== slugCandidate || isLegacyPath) {
            const langMatch = path.match(/^\/(fr|en)\//);
            const langPrefix = langMatch ? `/${langMatch[1]}` : "";
            return c.redirect(`https://mediunit.ma${langPrefix}/categories/${targetSlug}/`, 301);
        }
    }

    await next();
});

// Global Middlewares
app.use('*', cors({
    origin: '*', // Define specific origins in production
    allowMethods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
    allowHeaders: ['Content-Type', 'Authorization', 'Accept'],
}));

app.use('*', async (c, next) => {
    try {
        await next();
    } catch (err) {
        return errorHandler(err, c);
    }
});

// Protect all /api/v1 routes except public ones with rate limiting globally
app.use('/api/v1/*', rateLimitMiddleware(200, 60, 'global'));

// Health Check
app.get('/api/health', (c) => c.json({ status: 'ok', version: '2.0.0-architecture-upgrade' }));
app.get('/api/v1/health', (c) => c.json({ status: 'ok', version: '2.0.0-architecture-upgrade' }));

// Wire Route Modules
app.route('/api/v1/auth', authRoutes);
app.route('/api/v1/users', userRoutes);
app.route('/api/v1/products', productRoutes);
app.route('/api/v1/categories', categoryRoutes);
app.route('/api/v1/brands', brandRoutes);
app.route('/api/v1/kits', kitRoutes);
app.route('/api/v1/settings', settingsRoutes);
app.route('/api/v1/images', imageRoutes);

// Protected routes (apply auth middleware at route level to ensure token is valid)
app.use('/api/v1/dashboard/*', authMiddleware);
app.use('/api/v1/orders/*', optionalAuthMiddleware);

app.route('/api/v1/dashboard', dashboardRoutes);
app.route('/api/v1/orders', orderRoutes);

// Fallback error handlers
app.notFound(notFoundHandler);
app.onError(errorHandler);

export default app;
