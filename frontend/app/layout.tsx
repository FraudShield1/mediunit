import type { Metadata } from 'next';
import './globals.css';

export const metadata: Metadata = {
    title: "MediUnit | Fournisseur de Fournitures Chirurgicales & Kits Cliniques Casablanca",
    description: "Commandez vos consommables médicaux à l'unité. Livraison 24h pour les cliniques et médecins au Maroc (Casablanca, Rabat). Matériel chirurgical de haute qualité.",
    manifest: "/manifest.json",
    themeColor: "#004A99",
    viewport: "minimum-scale=1, initial-scale=1, width=device-width, shrink-to-fit=no, viewport-fit=cover",
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

export default function RootLayout({
    children,
}: {
    children: React.ReactNode
}) {
    return (
        <html lang="en">
            <body>
                <Toaster position="top-center" reverseOrder={false} />
                {children}
            </body>
        </html>
    );
}
