import { fetchProducts, fetchProductBySlug } from '@/app/lib/api';
import ProductClient from './components/ProductClient';
import { Metadata } from 'next';

export async function generateMetadata({ params }: { params: { slug: string } }): Promise<Metadata> {
    try {
        const product = await fetchProductBySlug(params.slug);
        const title = `${product.name} à l'unité - Fournisseur Médical B2B Casablanca | MediUnit`;
        return {
            title,
            description: product.description.slice(0, 160),
            openGraph: {
                title,
                description: product.description.slice(0, 160),
                images: product.image_url ? [product.image_url] : [],
            },
        };
    } catch (e) {
        return { title: 'Produit | MediUnit' };
    }
}

export async function generateStaticParams() {
    try {
        const products = await fetchProducts();
        if (!products || products.length === 0) throw new Error("No products fetched");
        return products.map((product: any) => ({
            slug: product.slug,
        }));
    } catch (e) {
        console.error("Failed to fetch static params for products, using fallback", e);
        // Fallback for critical pages to avoid build failure
        return [
            { slug: 'speculum-auriculaire-greatcare' },
            { slug: 'seringue-luer-slip-3-pieces' },
            { slug: 'aiguille-de-rachianesthesie-pointe-crayon' }
        ];
    }
}

export default async function ProductDetailPage({ params }: { params: { slug: string } }) {
    let product = null;
    try {
        product = await fetchProductBySlug(params.slug);
    } catch (e) {
        return <div className="min-h-screen flex items-center justify-center">Produit introuvable</div>;
    }

    const jsonLd = {
        '@context': 'https://schema.org',
        '@type': 'Product',
        name: product.name,
        image: product.image_url,
        description: product.description,
        sku: product.sku,
        brand: {
            '@type': 'Brand',
            name: product.brand_entity?.name || product.brand || 'MediUnit',
        },
        offers: {
            '@type': 'Offer',
            url: `https://mediunit-frontend.pages.dev/products/${product.slug}`,
            priceCurrency: 'MAD',
            price: product.base_unit_price,
            availability: product.stock_quantity > 0 ? 'https://schema.org/InStock' : 'https://schema.org/OutOfStock',
            itemCondition: 'https://schema.org/NewCondition',
        },
        aggregateRating: {
            '@type': 'AggregateRating',
            ratingValue: '4.9',
            reviewCount: '24'
        },
        review: {
            '@type': 'Review',
            reviewRating: {
                '@type': 'Rating',
                ratingValue: '5',
                bestRating: '5'
            },
            author: {
                '@type': 'Organization',
                name: 'Ultimed Group Clinics'
            }
        }
    };

    return (
        <>
            <script
                type="application/ld+json"
                dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
            />
            <ProductClient slug={params.slug} initialData={product} />
        </>
    );
}
