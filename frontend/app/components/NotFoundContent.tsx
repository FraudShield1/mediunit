'use client';

import Link from 'next/link';
import { Home, AlertCircle, ArrowLeft } from 'lucide-react';
import Logo from '@/app/components/Logo';

interface NotFoundContentProps {
    lang?: string;
    t?: (fr: string, en: string) => string;
}

export default function NotFoundContent({ lang = 'fr', t }: NotFoundContentProps) {
    const translate = t || ((fr: string, en: string) => lang === 'en' ? en : fr);

    return (
        <div className="min-h-screen bg-[#F8FAFC] flex flex-col font-sans">
            <header className="h-20 flex items-center px-6 border-b border-gray-200 bg-white/50 backdrop-blur-md sticky top-0 z-50">
                <Logo />
            </header>

            <main className="flex-1 flex items-center justify-center p-6">
                <div className="max-w-md w-full text-center relative">
                    <div className="absolute inset-0 -z-10 bg-[#0052FF]/5 blur-[120px] rounded-full scale-150"></div>

                    <div className="mb-8 inline-flex items-center justify-center w-24 h-24 rounded-[2rem] bg-[#0052FF]/10 text-[#0052FF]">
                        <AlertCircle className="w-12 h-12" />
                    </div>

                    <h1 className="text-6xl font-black text-[#1E293B] mb-4 tracking-tighter">404</h1>
                    <h2 className="text-2xl font-bold text-[#1E293B] mb-4 uppercase tracking-tight">
                        {translate('Page Introuvable', 'Page Not Found')}
                    </h2>
                    <p className="text-[#64748B] text-lg mb-10 leading-relaxed font-medium">
                        {translate(
                            "Désolé, nous n'avons pas pu trouver la page que vous recherchez. Elle a peut-être été déplacée ou supprimée.",
                            "Sorry, we couldn't find the page you're looking for. It might have been moved or deleted."
                        )}
                    </p>

                    <div className="flex flex-col sm:flex-row gap-4 justify-center">
                        <Link
                            href={`/${lang}`}
                            className="bg-[#0052FF] text-white px-8 py-4 rounded-2xl font-black flex items-center justify-center gap-2 hover:bg-[#0041CC] transition-all transform active:scale-95 shadow-xl shadow-[#0052FF]/20"
                        >
                            <Home className="w-5 h-5" />
                            {translate('RETOUR À L\'ACCUEIL', 'BACK TO HOME')}
                        </Link>
                        <button
                            onClick={() => window.history.back()}
                            className="bg-white text-[#64748B] border border-gray-200 px-8 py-4 rounded-2xl font-bold flex items-center justify-center gap-2 hover:bg-gray-50 transition-all"
                        >
                            <ArrowLeft className="w-5 h-5" />
                            {translate('PAGE PRÉCÉDENTE', 'GO BACK')}
                        </button>
                    </div>
                </div>
            </main>

            <footer className="py-8 text-center border-t border-gray-200">
                <p className="text-xs font-black text-gray-400 uppercase tracking-[0.2em]">
                    &copy; {new Date().getFullYear()} MediUnit Morocco
                </p>
            </footer>
        </div>
    );
}
