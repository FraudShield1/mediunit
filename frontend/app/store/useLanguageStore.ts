import { create } from 'zustand';
import { persist } from 'zustand/middleware';

interface LanguageState {
    language: 'fr' | 'en';
    setLanguage: (lang: 'fr' | 'en') => void;
    t: (fr: string, en: string) => string;
}

export const useLanguageStore = create<LanguageState>()(
    persist(
        (set, get) => ({
            language: 'fr',
            setLanguage: (lang) => set({ language: lang }),
            t: (fr, en) => (get().language === 'fr' ? fr : en),
        }),
        {
            name: 'mediunit-language-storage',
        }
    )
);
