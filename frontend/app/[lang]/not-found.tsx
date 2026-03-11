'use client';

import Link from '@/app/components/LocalizedLink';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import { Home, AlertCircle, ArrowLeft } from 'lucide-react';
import Logo from '@/app/components/Logo';

export default function NotFound() {
    const { t } = useLanguageStore();

    return (
        <div className="min-h-screen bg-clinic-white flex flex-col">
            <header className="h-20 flex items-center px-6 border-b border-slate-gray-light/10 bg-white/50 backdrop-blur-md sticky top-0 z-50">
                <Logo />
            </header>

            <main className="flex-1 flex items-center justify-center p-6">
                <div className="max-w-md w-full text-center relative">
                    {/* Decorative Background Element */}
                    <div className="absolute inset-0 -z-10 bg-medical-blue/5 blur-[120px] rounded-full scale-150"></div>

                    <div className="mb-8 inline-flex items-center justify-center w-24 h-24 rounded-[2rem] bg-medical-blue/10 text-medical-blue">
                        <AlertCircle className="w-12 h-12" />
                    </div>

                    <h1 className="text-6xl font-black text-slate-gray-dark mb-4 tracking-tighter">404</h1>
                    <h2 className="text-2xl font-bold text-slate-gray-dark mb-4 uppercase tracking-tight">
                        {t('Page Introuvable', 'Page Not Found')}
                    </h2>
                    <p className="text-slate-gray text-lg mb-10 leading-relaxed font-medium">
                        {t(
                            "Désolé, nous n'avons pas pu trouver la page que vous recherchez. Elle a peut-être été déplacée ou supprimée.",
                            "Sorry, we couldn't find the page you're looking for. It might have been moved or deleted."
                        )}
                    </p>

                    <div className="flex flex-col sm:flex-row gap-4 justify-center">
                        <Link
                            href="/"
                            className="bg-medical-blue text-white px-8 py-4 rounded-2xl font-black flex items-center justify-center gap-2 hover:bg-medical-blue-dark transition-all transform active:scale-95 shadow-xl shadow-medical-blue/20"
                        >
                            <Home className="w-5 h-5" />
                            {t('RETOUR À L\'ACCUEIL', 'BACK TO HOME')}
                        </Link>
                        <button
                            onClick={() => window.history.back()}
                            className="bg-white text-slate-gray border border-slate-gray-light/20 px-8 py-4 rounded-2xl font-bold flex items-center justify-center gap-2 hover:bg-slate-gray-light/5 transition-all"
                        >
                            <ArrowLeft className="w-5 h-5" />
                            {t('PAGE PRÉCÉDENTE', 'GO BACK')}
                        </button>
                    </div>
                </div>
            </main>

            <footer className="py-8 text-center border-t border-slate-gray-light/10">
                <p className="text-xs font-black text-slate-gray/40 uppercase tracking-[0.2em]">
                    &copy; {new Date().getFullYear()} MediUnit Morocco
                </p>
            </footer>
        </div>
    );
}
