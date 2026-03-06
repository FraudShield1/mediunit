import { create } from 'zustand';
import { persist } from 'zustand/middleware';

interface LanguageState {
    language: 'fr' | 'en';
    setLanguage: (lang: 'fr' | 'en') => void;
    t: (fr: string, en: string) => string;
    translateProduct: (text: string) => string;
}

// Medical translation dictionary for dynamic database content
const medicalDict: Record<string, string> = {
    'Gant en nitrile': 'Nitrile Glove',
    'Gants en nitrile': 'Nitrile Gloves',
    'Seringue': 'Syringe',
    'Aiguille': 'Needle',
    'Sonde': 'Catheter',
    'Masque Laryngé': 'Laryngeal Mask',
    'Kit Péridural': 'Epidural Kit',
    'Poche à Urine': 'Urine Bag',
    'Filtre': 'Filter',
    'Épigastrique': 'Epigastric',
    'Spinale': 'Spinal',
    'Cathéter': 'Catheter',
    'Canule': 'Cannula',
    'Stérile': 'Sterile',
    'Chirurgical': 'Surgical',
    'Bistouri': 'Scalpel',
    'Pansement': 'Dressing',
    'Compresses': 'Swabs',
    'Drap': 'Drape',
    'Boîte': 'Box',
    'Unité': 'Unit',
    'Multi-Tailles': 'Multi-Size'
};

const translateText = (text: string): string => {
    if (!text) return text;
    let translated = text;
    Object.entries(medicalDict).forEach(([fr, en]) => {
        const regex = new RegExp(`\\b${fr}\\b`, 'gi');
        translated = translated.replace(regex, (match) => {
            // Match original case if completely capitalized
            if (match === match.toUpperCase() && match.length > 1) return en.toUpperCase();
            // Match title case
            if (match[0] === match[0].toUpperCase()) return en.charAt(0).toUpperCase() + en.slice(1).toLowerCase();
            return en.toLowerCase();
        });
    });
    return translated;
};

export const useLanguageStore = create<LanguageState>()(
    persist(
        (set, get) => ({
            language: 'fr',
            setLanguage: (lang) => set({ language: lang }),
            t: (fr, en) => (get().language === 'fr' ? fr : en),
            translateProduct: (text) => (get().language === 'fr' ? text : translateText(text)),
        }),
        {
            name: 'mediunit-language-storage',
        }
    )
);
