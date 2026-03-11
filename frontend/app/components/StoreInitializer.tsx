'use client';

import { useRef } from 'react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export default function StoreInitializer({ 
    lang, 
    children 
}: { 
    lang: string, 
    children: React.ReactNode 
}) {
    const initialized = useRef(false);
    if (!initialized.current) {
        useLanguageStore.setState({ language: lang as 'fr' | 'en' });
        initialized.current = true;
    }
    return <>{children}</>;
}
