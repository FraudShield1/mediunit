'use client';

import NotFoundContent from '@/app/components/NotFoundContent';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export default function NotFound() {
    const { t, language } = useLanguageStore();
    return <NotFoundContent lang={language} t={t} />;
}
