import { fetchProducts, fetchProductBySlug } from '@/app/lib/api';
import ProductClient from './components/ProductClient';
import { Metadata } from 'next';

export async function generateMetadata({ params }: { params: { slug: string } }): Promise<Metadata> {
    try {
        const product = await fetchProductBySlug(params.slug);
        const title = `${product.name} | MediUnit Clinical Sourcing`;
        const description = product.description.replace(/<[^>]*>?/gm, '').slice(0, 160);
        return {
            metadataBase: new URL('https://mediunit.ma'),
            title,
            description,
            openGraph: {
                title,
                description,
                type: 'article',
                url: `https://mediunit.ma/products/${params.slug}`,
                images: [
                    {
                        url: product.image_url,
                        width: 800,
                        height: 800,
                        alt: product.name,
                    },
                ],
            },
            twitter: {
                card: 'summary_large_image',
                title,
                description,
                images: [product.image_url],
            },
            alternates: {
                canonical: `/products/${params.slug}`,
            },
        };
    } catch (e) {
        return { title: 'Produit | MediUnit' };
    }
}

export async function generateStaticParams() {
    try {
        // Force fetch from the live production backend during build
        const res = await fetch('https://mediunit-backend.a-naouri.workers.dev/api/v1/products', {
            next: { revalidate: 0 } // No cache
        });
        const data = await res.json();
        const products = data.data || data.items || data || [];

        if (!products || products.length === 0) {
            console.warn("API returned 0 products during build");
            return [];
        }

        return products.map((product: any) => ({
            slug: product.slug,
        }));
    } catch (e) {
        console.error("Critical: Failed to fetch static params for products!", e);
        return []; // Return empty array so build passes but doesn't fake pages
    }
}

export default async function ProductDetailPage({ params }: { params: { slug: string } }) {
    let product = null;
    let relatedProducts = [];
    try {
        product = await fetchProductBySlug(params.slug);

        // Fetch related products from the same category
        if (product && product.category && product.category.slug) {
            const relatedResponse = await fetchProducts(product.category.slug);
            const fetched = relatedResponse.data || relatedResponse.items || relatedResponse || [];
            // Filter out current product and grab up to 4
            relatedProducts = fetched
                .filter((p: any) => p.slug !== params.slug)
                .slice(0, 4);
        }
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
            url: `https://mediunit.ma/products/${product.slug}`,
            priceCurrency: 'MAD',
            price: product.base_unit_price,
            availability: product.stock_quantity > 0 ? 'https://schema.org/InStock' : 'https://schema.org/OutOfStock',
            itemCondition: 'https://schema.org/NewCondition',
        }
    };

    return (
        <>
            <script
                type="application/ld+json"
                dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
            />
            <ProductClient slug={params.slug} initialData={product} relatedProducts={relatedProducts} />
        </>
    );
}
