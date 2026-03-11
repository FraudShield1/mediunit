'use client';

import { useRouter } from 'next/navigation';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export function useLocalizedRouter() {
    const router = useRouter();
    const { language } = useLanguageStore();

    return {
        ...router,
        push: (href: string, options?: any) => {
            let localizedHref = href;
            if (href.startsWith('/') && !href.startsWith('/api') && !href.startsWith('/fr/') && !href.startsWith('/en/') && href !== '/fr' && href !== '/en') {
                localizedHref = href === '/' ? `/${language}` : `/${language}${href}`;
            }
            return router.push(localizedHref, options);
        },
        replace: (href: string, options?: any) => {
            let localizedHref = href;
            if (href.startsWith('/') && !href.startsWith('/api') && !href.startsWith('/fr/') && !href.startsWith('/en/') && href !== '/fr' && href !== '/en') {
                localizedHref = href === '/' ? `/${language}` : `/${language}${href}`;
            }
            return router.replace(localizedHref, options);
        }
    };
}
