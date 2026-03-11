'use client';

import React, { useState } from 'react';
import { useParams } from 'next/navigation';
import Link from '@/app/components/LocalizedLink';
import { Mail, ArrowLeft, Loader2, KeyRound, CheckCircle2 } from 'lucide-react';
import { requestPasswordReset } from '@/app/lib/api';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export default function ForgotPasswordPage() {
    const { lang } = useParams();
    const { t } = useLanguageStore();
    const [email, setEmail] = useState('');
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState('');
    const [success, setSuccess] = useState(false);

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        setLoading(true);
        setError('');
        try {
            await requestPasswordReset(email, lang as string);
            setSuccess(true);
        } catch (err: any) {
            setError(err.message || t('Une erreur est survenue', 'An error occurred'));
        } finally {
            setLoading(false);
        }
    };

    return (
        <div className="min-h-screen bg-clinic-white flex flex-col font-sans">
            <header className="absolute top-0 w-full p-4 md:p-8 z-10">
                <Link href="/login" className="inline-flex items-center gap-2 text-slate-gray hover:text-medical-blue transition-colors">
                    <ArrowLeft className="w-5 h-5" />
                    <span className="font-semibold text-sm">{t("Retour à la connexion", "Back to Login")}</span>
                </Link>
            </header>

            <div className="flex-1 flex items-center justify-center p-4 mt-16 md:mt-0">
                <div className="w-full max-w-md bg-white rounded-[2.5rem] p-8 md:p-12 shadow-2xl shadow-medical-blue/10 border border-slate-gray-light/10">
                    <div className="flex flex-col items-center mb-10">
                        <div className="w-16 h-16 bg-medical-blue/10 rounded-2xl flex items-center justify-center mb-6 shadow-sm">
                            <KeyRound className="text-medical-blue w-8 h-8" />
                        </div>
                        <h1 className="text-2xl md:text-3xl font-black text-slate-gray-dark tracking-tight text-center">
                            {t("Mot de passe oublié ?", "Forgot Password?")}
                        </h1>
                        <p className="text-slate-gray mt-4 text-center text-sm font-medium leading-relaxed">
                            {t("Entrez l'adresse e-mail associée à votre compte, nous vous enverrons un lien de réinitialisation.", "Enter the email associated with your account, and we will send you a reset link.")}
                        </p>
                    </div>

                    {success ? (
                        <div className="text-center animate-fade-in">
                            <div className="flex justify-center mb-6">
                                <CheckCircle2 className="w-16 h-16 text-sage-green" />
                            </div>
                            <h2 className="text-xl font-bold text-slate-gray-dark mb-4">
                                {t("Vérifiez votre boîte e-mail", "Check your inbox")}
                            </h2>
                            <p className="text-slate-gray text-sm mb-8">
                                {t("Si un compte existe pour ", "If an account exists for ")} <span className="font-bold text-slate-gray-dark">{email}</span>{t(", vous allez recevoir un e-mail avec un lien de réinitialisation.", ", you will receive an email with a reset link.")}
                            </p>
                            <Link href="/login" className="btn-primary w-full h-14 flex items-center justify-center text-lg shadow-md hover:shadow-lg transition-all">
                                {t("Retour à la connexion", "Back to Login")}
                            </Link>
                        </div>
                    ) : (
                        <form onSubmit={handleSubmit} className="space-y-6">
                            <div className="space-y-2">
                                <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">
                                    {t("Adresse E-mail", "Email Address")}
                                </label>
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

                            {error && (
                                <div className="p-4 bg-red-50 border border-red-100 rounded-2xl text-red-600 text-sm font-bold animate-shake">
                                    {error}
                                </div>
                            )}

                            <button
                                disabled={loading}
                                type="submit"
                                className={`w-full btn-primary h-14 text-lg mt-8 flex items-center justify-center gap-2 shadow-md hover:shadow-lg transition-all ${loading ? 'opacity-70 cursor-not-allowed' : ''}`}
                            >
                                {loading ? <Loader2 className="w-6 h-6 animate-spin" /> : t("Envoyer le lien", "Send Reset Link")}
                            </button>
                        </form>
                    )}
                </div>
            </div>
        </div>
    );
}
