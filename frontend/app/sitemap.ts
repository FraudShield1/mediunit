import { MetadataRoute } from 'next';
import { fetchProducts, fetchCategories } from './lib/api';

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
    const baseUrl = 'https://mediunit.ma';

    let products = [];
    let categories = [];
    try {
        const productsRes = await fetchProducts();
        const categoriesRes = await fetchCategories();
        if (productsRes) products = productsRes;
        if (categoriesRes) categories = categoriesRes;
    } catch (e) {
        console.error('Failed to fetch data for sitemap', e);
    }

    const langs = ['fr', 'en'];

    const productUrls = langs.flatMap(lang => products.map((product: any) => ({
        url: `${baseUrl}/${lang}/products/${product.slug}`,
        lastModified: new Date(),
        changeFrequency: 'weekly' as const,
        priority: 0.8,
    })));

    const categoryUrls = langs.flatMap(lang => categories.map((category: any) => ({
        url: `${baseUrl}/${lang}/categories/${category.slug}`,
        lastModified: new Date(),
        changeFrequency: 'weekly' as const,
        priority: 0.9,
    })));

    const baseUrls = langs.flatMap(lang => [
        {
            url: `${baseUrl}/${lang}`,
            lastModified: new Date(),
            changeFrequency: 'daily' as const,
            priority: 1.0,
        },
        {
            url: `${baseUrl}/${lang}/search`,
            lastModified: new Date(),
            changeFrequency: 'weekly' as const,
            priority: 0.9,
        },
        {
            url: `${baseUrl}/${lang}/login`,
            lastModified: new Date(),
            changeFrequency: 'monthly' as const,
            priority: 0.6,
        },
        {
            url: `${baseUrl}/${lang}/cart`,
            lastModified: new Date(),
            changeFrequency: 'always' as const,
            priority: 0.4,
        }
    ]);

    return [
        {
            url: baseUrl,
            lastModified: new Date(),
            changeFrequency: 'daily' as const,
            priority: 1.0,
        },
        ...baseUrls,
        ...categoryUrls,
        ...productUrls,
    ];
}
