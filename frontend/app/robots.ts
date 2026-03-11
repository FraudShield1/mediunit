import { MetadataRoute } from 'next';

export default function robots(): MetadataRoute.Robots {
    return {
        rules: {
            userAgent: '*',
            allow: '/',
            disallow: ['/admin', '/api', '/deployment-final-fix-2026-03-11-2040'],
        },
        sitemap: 'https://mediunit.ma/sitemap.xml',
    };
}
