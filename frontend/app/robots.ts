import { MetadataRoute } from 'next';

export default function robots(): MetadataRoute.Robots {
    return {
        rules: {
            userAgent: '*',
            allow: '/',
            disallow: ['/admin', '/api', '/deployment-override-2026-03-11'],
        },
        sitemap: 'https://mediunit.ma/sitemap.xml',
    };
}
