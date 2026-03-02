import { fetchProducts, fetchCategories } from '@/app/lib/api';
import CategoryClient from './components/CategoryClient';

export async function generateStaticParams() {
    try {
        const categories = await fetchCategories();
        if (!categories || categories.length === 0) {
            console.warn("API returned 0 categories during build");
            return [];
        }
        return categories.map((category: any) => ({
            slug: category.slug,
        }));
    } catch (e) {
        console.error("Critical: Failed to fetch static params for categories!", e);
        return [];
    }
}

export async function generateMetadata({ params }: { params: { slug: string } }) {
    try {
        const categories = await fetchCategories();
        const category = categories.find((c: any) => c.slug === params.slug);
        if (!category) return { title: 'Catégorie non trouvée | MediUnit' };

        return {
            title: `${category.name} | Fournitures Médicales MediUnit Casablanca`,
            description: `Achetez des ${category.name.toLowerCase()} de qualité professionnelle sur MediUnit. Livraison 24h à Casablanca pour cliniques et praticiens.`,
        };
    } catch (e) {
        return { title: 'MediUnit | Catégorie' };
    }
}

export default async function CategoryPage({ params }: { params: { slug: string } }) {
    let products = [];
    let category = null;

    try {
        const [allCats, prods] = await Promise.all([
            fetchCategories(),
            fetchProducts(params.slug)
        ]);
        category = allCats.find((c: any) => c.slug === params.slug);
        products = prods;
    } catch (error) {
        console.error("Error loading category server-side:", error);
    }

    const jsonLd = {
        '@context': 'https://schema.org',
        '@type': 'ItemList',
        itemListElement: products.map((product: any, index: number) => ({
            '@type': 'ListItem',
            position: index + 1,
            item: {
                '@type': 'Product',
                url: `https://mediunit-frontend.pages.dev/products/${product.slug}`,
                name: product.name,
                image: product.image_url,
                sku: product.sku,
            }
        }))
    };

    return (
        <>
            <script
                type="application/ld+json"
                dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
            />
            <CategoryClient
                slug={params.slug}
                initialProducts={products}
                initialCategory={category}
            />
        </>
    );
}
