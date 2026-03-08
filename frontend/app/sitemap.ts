import { MetadataRoute } from 'next';
import { fetchProducts, fetchCategories } from './lib/api';

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
    const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || 'https://mediunit.ma';

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

    const productUrls = products.map((product: any) => ({
        url: `${baseUrl}/products/${product.slug}`,
        lastModified: new Date(),
        changeFrequency: 'weekly' as const,
        priority: 0.8,
    }));

    const categoryUrls = categories.map((category: any) => ({
        url: `${baseUrl}/categories/${category.slug}`,
        lastModified: new Date(),
        changeFrequency: 'weekly' as const,
        priority: 0.9,
    }));

    return [
        {
            url: baseUrl,
            lastModified: new Date(),
            changeFrequency: 'daily',
            priority: 1.0,
        },
        {
            url: `${baseUrl}/search`,
            lastModified: new Date(),
            changeFrequency: 'weekly',
            priority: 0.9,
        },
        {
            url: `${baseUrl}/login`,
            lastModified: new Date(),
            changeFrequency: 'monthly',
            priority: 0.6,
        },
        {
            url: `${baseUrl}/cart`,
            lastModified: new Date(),
            changeFrequency: 'always',
            priority: 0.4,
        },
        ...categoryUrls,
        ...productUrls,
    ];
}
