import type { Metadata, Viewport } from 'next';
import { Inter, Outfit } from 'next/font/google';
import './globals.css';
import Footer from './components/Footer';
import BottomNav from './components/BottomNav';
import CartDrawer from './components/CartDrawer';

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
    metadataBase: new URL('https://mediunit.ma'),
    title: "MediUnit | Grossiste Dispositifs Médicaux & Consommables Casablanca Morocco",
    description: "MediUnit: Premier hub B2B pour le sourcing de dispositifs médicaux au Maroc. Livraison 24h/48h sur Casablanca et tout le royaume. Consommables chirurgicaux, kits cliniques et matériel de soins.",
    manifest: "/manifest.json",
    keywords: ["dispositifs médicaux", "consommables médicaux", "maroc", "casablanca", "sourcing clinique", "kits médicaux", "matériel de chirurgie"],
    authors: [{ name: "MediUnit Morocco" }],
    robots: {
        index: true,
        follow: true,
        googleBot: {
            index: true,
            follow: true,
            'max-video-preview': -1,
            'max-image-preview': 'large',
            'max-snippet': -1,
        },
    },
    alternates: {
        canonical: '/',
    },
    icons: {
        icon: '/favicon.png',
        apple: '/favicon.png',
    },
    openGraph: {
        title: "MediUnit - Sourcing Excellence en Dispositifs Médicaux B2B",
        description: "Plateforme B2B dédiée aux plateaux techniques marocains. Optimisez vos stocks avec une livraison fiable et certifiée.",
        url: "https://mediunit.ma",
        siteName: "MediUnit Morocco",
        images: [
            {
                url: '/logo.png',
                width: 1200,
                height: 630,
                alt: 'MediUnit Medical Sourcing Morocco',
            },
        ],
        locale: "fr_MA",
        type: "website",
    },
    twitter: {
        card: 'summary_large_image',
        title: "MediUnit - Fournisseur Médical B2B",
        description: "Dispositifs médicaux et consommables chirurgicaux au Maroc.",
        images: ['/logo.png'],
    },
};

import { Toaster } from 'react-hot-toast';
import BackToTop from './components/BackToTop';

const jsonLd = {
    "@context": "https://schema.org",
    "@type": "MedicalOrganization",
    "name": "MediUnit",
    "url": "https://mediunit.ma",
    "logo": "https://mediunit.ma/logo.png",
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
                <div className="min-h-screen flex flex-col">
                    <div className="flex-1">{children}</div>
                    <Footer />
                    <BottomNav />
                </div>
                <CartDrawer />
                <BackToTop />
            </body>
        </html>
    );
}
