import React from 'react';
import { fetchProducts, fetchCategories } from '@/app/lib/api';
import ClientHome from '@/app/components/ClientHome';

export const metadata = {
    title: 'MediUnit | Fournisseur Médical B2B Casablanca - Gants, Seringues, Kits Cliniques',
    description: 'Plateforme de commande de dispositifs médicaux pour cliniques et médecins au Maroc. Livraison le lendemain à Casablanca, gants nitrile, masques, seringues.',
};

export default async function LandingPage() {
    let products = [];
    let categories = [];

    try {
        [products, categories] = await Promise.all([
            fetchProducts(),
            fetchCategories()
        ]);
    } catch (error) {
        console.error("Error fetching landing page data:", error);
    }

    const medicalBusinessJsonLd = {
        '@context': 'https://schema.org',
        '@type': 'MedicalBusiness',
        name: 'MediUnit',
        image: 'https://mediunit.ma/logo.png',
        '@id': 'https://mediunit.ma',
        url: 'https://mediunit.ma',
        telephone: '+212-661-364375',
        address: {
            '@type': 'PostalAddress',
            streetAddress: 'Zone Industrielle Sapino, Nouaceur',
            addressLocality: 'Casablanca',
            postalCode: '27182',
            addressCountry: 'MA',
        },
        priceRange: 'MAD 1 - MAD 10000',
    };

    return (
        <>
            <script
                type="application/ld+json"
                dangerouslySetInnerHTML={{ __html: JSON.stringify(medicalBusinessJsonLd) }}
            />
            <ClientHome initialProducts={products} initialCategories={categories} />
        </>
    );
}
