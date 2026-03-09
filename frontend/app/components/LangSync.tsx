'use client';

import { useEffect } from 'react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

/**
 * Syncs the <html lang="..."> attribute with the active language from Zustand.
 * Must be rendered inside the <body> so the store is accessible.
 */
export default function LangSync() {
    const { language } = useLanguageStore();

    useEffect(() => {
        document.documentElement.lang = language;
    }, [language]);

    return null;
}
