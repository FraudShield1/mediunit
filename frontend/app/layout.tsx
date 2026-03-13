import './globals.css';
import { Inter, Outfit } from 'next/font/google';
import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'MediUnit | Medical Supplies & Clinical Sourcing Morocco',
  description: 'Specialized medical supplies and clinical kits hub in Morocco.',
  metadataBase: new URL('https://mediunit.ma'),
};
import LaunchDarklyProvider from '@/app/components/LaunchDarklyProvider';
import WhatsAppChat from '@/app/components/WhatsAppChat';



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

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="fr" className={`${inter.variable} ${outfit.variable}`}>
      <body className="font-sans antialiased">
        <LaunchDarklyProvider>
          {children}
          <WhatsAppChat />
        </LaunchDarklyProvider>
      </body>

    </html>

  )
}
