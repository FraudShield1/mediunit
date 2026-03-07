'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { Activity, Mail, Lock, LogIn, ArrowLeft, Loader2 } from 'lucide-react';
import { login } from '@/app/lib/api';
import { useRouter } from 'next/navigation';
import { useAuthStore } from '@/app/store/useAuthStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export default function LoginPage() {
    const router = useRouter();
    const { setAuth } = useAuthStore();
    const { t } = useLanguageStore();
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState('');

    const searchParams = typeof window !== 'undefined'
        ? new URLSearchParams(window.location.search)
        : new URLSearchParams();
    const redirectTo = searchParams.get('from') || '/dashboard';

    const handleLogin = async (e: React.FormEvent) => {
        e.preventDefault();
        setLoading(true);
        setError('');
        try {
            const data = await login(email, password);
            setAuth(data.token, data.user);
            router.push(redirectTo);
        } catch (err: any) {
            setError(err.message || t('Échec de la connexion', 'Login failed'));
        } finally {
            setLoading(false);
        }
    };

    return (
        <div className="min-h-screen bg-clinic-white flex flex-col font-sans">
            <header className="absolute top-0 w-full p-4 md:p-8 z-10">
                <Link href="/" className="inline-flex items-center gap-2 text-slate-gray hover:text-medical-blue transition-colors">
                    <ArrowLeft className="w-5 h-5" />
                    <span className="font-semibold text-sm">{t("Retour à l'accueil", "Back to Home")}</span>
                </Link>
            </header>

            <div className="flex-1 flex items-center justify-center p-4">
                <div className="w-full max-w-md bg-white rounded-[2.5rem] p-8 md:p-12 shadow-2xl shadow-medical-blue/10 border border-slate-gray-light/10">
                    <div className="flex flex-col items-center mb-10">
                        <div className="w-16 h-16 bg-medical-blue rounded-2xl flex items-center justify-center mb-6 shadow-lg shadow-medical-blue/30">
                            <Activity className="text-white w-8 h-8" />
                        </div>
                        <h1 className="text-3xl font-black text-slate-gray-dark tracking-tight">{t("Bienvenue", "Welcome")}</h1>
                        <p className="text-slate-gray mt-2 text-center text-sm font-medium">{t("Connectez-vous pour accéder à votre espace MediUnit.", "Log in to access your MediUnit space.")}</p>
                    </div>

                    <form onSubmit={handleLogin} className="space-y-6">
                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Adresse E-mail", "Email Address")}</label>
                            <div className="relative">
                                <Mail className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="email"
                                    required
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    placeholder="docteur@clinique.com"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        <div className="space-y-2">
                            <div className="flex items-center justify-between pl-1">
                                <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest">{t("Mot de passe", "Password")}</label>
                                <Link href="#" className="text-xs font-bold text-medical-blue hover:underline">{t("Oublié ?", "Forgot?")}</Link>
                            </div>
                            <div className="relative">
                                <Lock className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="password"
                                    required
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    placeholder="••••••••"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        {error && (
                            <div className="p-4 bg-red-50 border border-red-100 rounded-2xl text-red-600 text-sm font-bold animate-shake">
                                {error}
                            </div>
                        )}

                        <button
                            disabled={loading}
                            type="submit"
                            className={`w-full btn-primary h-14 text-lg mt-8 flex items-center justify-center gap-2 group ${loading ? 'opacity-70' : ''}`}
                        >
                            {loading ? <Loader2 className="w-6 h-6 animate-spin" /> : (
                                <>
                                    <span>{t("Se Connecter", "Log In")}</span>
                                    <LogIn className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
                                </>
                            )}
                        </button>
                    </form>

                    <div className="mt-8 pt-8 border-t border-slate-gray-light/10 text-center">
                        <p className="text-sm font-medium text-slate-gray">
                            {t("Nouveau sur MediUnit ?", "New to MediUnit?")}{' '}
                            <Link href="/register" className="font-bold text-medical-blue hover:underline">{t("Demander un accès", "Request Access")}</Link>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    );
}
