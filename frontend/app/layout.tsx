import type { Metadata, Viewport } from 'next';
import { Inter, Outfit } from 'next/font/google';
import './globals.css';

const inter = Inter({
    subsets: ['latin'],
    variable: '--font-inter',
    display: 'swap',
});

const outfit = Outfit({
    subsets: ['latin'],
    variable: '--font-outfit',
    display: 'swap',
});

export const viewport: Viewport = {
    themeColor: "#004A99",
    width: "device-width",
    initialScale: 1,
    minimumScale: 1,
    viewportFit: "cover",
};

export const metadata: Metadata = {
    metadataBase: new URL('https://mediunit-frontend.pages.dev'),
    title: "MediUnit | Fournisseur de Fournitures Chirurgicales & Kits Cliniques Casablanca",
    description: "Commandez vos consommables médicaux à l'unité. Livraison 24h pour les cliniques et médecins au Maroc (Casablanca, Rabat). Matériel chirurgical de haute qualité.",
    manifest: "/manifest.json",
    alternates: {
        canonical: '/',
    },
    openGraph: {
        title: "MediUnit - Fournisseur Médical B2B pour Cliniques",
        description: "Fournitures cliniques et kits spécialisés à l'unité. Livraison express au Maroc.",
        url: "https://mediunit-frontend.pages.dev",
        siteName: "MediUnit Morocco",
        locale: "fr_MA",
        type: "website",
    }
};

import { Toaster } from 'react-hot-toast';

const jsonLd = {
    "@context": "https://schema.org",
    "@type": "MedicalOrganization",
    "name": "MediUnit",
    "url": "https://mediunit-frontend.pages.dev",
    "logo": "https://mediunit-frontend.pages.dev/apple-touch-icon.png",
    "description": "Fournitures cliniques et kits spécialisés à l'unité. Livraison express au Maroc (Casablanca, Rabat).",
    "address": {
        "@type": "PostalAddress",
        "addressLocality": "Casablanca",
        "addressCountry": "MA"
    }
};

export default function RootLayout({
    children,
}: {
    children: React.ReactNode
}) {
    return (
        <html lang="fr" className={`${inter.variable} ${outfit.variable}`}>
            <head>
                <script
                    type="application/ld+json"
                    dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
                />
            </head>
            <body className="font-sans antialiased">
                <Toaster position="top-center" reverseOrder={false} />
                {children}
            </body>
        </html>
    );
}
