import type { Metadata, Viewport } from 'next';
import { Inter, Outfit } from 'next/font/google';
import '../globals.css';
import Footer from '@/app/components/Footer';
import BottomNav from '@/app/components/BottomNav';
import CartDrawer from '@/app/components/CartDrawer';

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
    title: "MediUnit | Dispositifs Médicaux & Consommables au Maroc",
    description: "MediUnit : Sourcing B2B de dispositifs médicaux certifiés au Maroc. Livraison express à Casablanca et partout dans le royaume. Qualité clinique garantie.",
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
            'max-image-preview': 'none',
            'max-snippet': -1,
        },
    },
    icons: {
        icon: [
            { url: '/favicon.png' },
            { url: '/icon-192x192.png', sizes: '192x192', type: 'image/png' },
            { url: '/icon-512x512.png', sizes: '512x512', type: 'image/png' },
        ],
        apple: '/favicon.png',
    },
    openGraph: {
        title: "MediUnit - Sourcing Excellence en Dispositifs Médicaux B2B",
        description: "Plateforme B2B dédiée aux plateaux techniques marocains. Optimisez vos stocks avec une livraison fiable et certifiée.",
        url: "https://mediunit.ma",
        siteName: "MediUnit Morocco",
        images: [
            {
                url: `/logo.png?v=${new Date().getTime()}`,
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
        images: [`/logo.png?v=${new Date().getTime()}`],
    },
};

import { Toaster } from 'react-hot-toast';
import BackToTop from '@/app/components/BackToTop';
import LangSync from '@/app/components/LangSync';
import StoreInitializer from '@/app/components/StoreInitializer';

export function generateStaticParams() {
    return [{ lang: 'fr' }, { lang: 'en' }];
}

const jsonLd = {
    "@context": "https://schema.org",
    "@type": "MedicalOrganization",
    "name": "MediUnit",
    "url": "https://mediunit.ma",
    "logo": "https://mediunit.ma/logo.png?v=2026",
    "description": "Fournitures cliniques et kits spécialisés à l'unité. Livraison express au Maroc (Casablanca, Rabat).",
    "address": {
        "@type": "PostalAddress",
        "addressLocality": "Casablanca",
        "addressCountry": "MA"
    }
};

export default function RootLayout({
    children,
    params: { lang },
}: {
    children: React.ReactNode,
    params: { lang: string }
}) {
    return (
        <html lang={lang} className={`${inter.variable} ${outfit.variable}`}>
            <head>
                <script
                    type="application/ld+json"
                    dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
                />
            </head>
            <body className="font-sans antialiased">
                <StoreInitializer lang={lang}>
                    <LangSync />
                    <Toaster position="top-center" reverseOrder={false} />
                    <div className="min-h-screen flex flex-col">
                        <div className="flex-1">{children}</div>
                        <Footer />
                        <BottomNav />
                    </div>
                    <CartDrawer />
                    <BackToTop />
                </StoreInitializer>
            </body>
        </html>
    );
}
