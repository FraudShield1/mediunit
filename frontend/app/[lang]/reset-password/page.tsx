'use client';

import React, { useState, useEffect, Suspense } from 'react';
import Link from '@/app/components/LocalizedLink';
import { Lock, ArrowLeft, Loader2, CheckCircle2, ShieldCheck } from 'lucide-react';
import { resetPassword } from '@/app/lib/api';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import { useSearchParams } from 'next/navigation';

function ResetPasswordForm() {
    const { t } = useLanguageStore();
    const searchParams = useSearchParams();
    const token = searchParams.get('token');
    
    const [password, setPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState('');
    const [success, setSuccess] = useState(false);

    useEffect(() => {
        if (!token) {
            setError(t("Lien invalide ou expiré. Veuillez refaire une demande.", "Invalid or expired link. Please request a new one."));
        }
    }, [token, t]);

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        setLoading(true);
        setError('');

        if (password !== confirmPassword) {
            setError(t("Les mots de passe ne correspondent pas.", "Passwords do not match."));
            setLoading(false);
            return;
        }

        if (password.length < 8) {
            setError(t("Le mot de passe doit contenir au moins 8 caractères.", "Password must be at least 8 characters long."));
            setLoading(false);
            return;
        }

        try {
            await resetPassword(token as string, password);
            setSuccess(true);
        } catch (err: any) {
            setError(err.message || t('Une erreur est survenue', 'An error occurred'));
        } finally {
            setLoading(false);
        }
    };

    if (success) {
        return (
            <div className="text-center animate-fade-in">
                <div className="flex justify-center mb-6">
                    <CheckCircle2 className="w-16 h-16 text-sage-green" />
                </div>
                <h2 className="text-xl font-bold text-slate-gray-dark mb-4">
                    {t("Mot de passe mis à jour", "Password updated")}
                </h2>
                <p className="text-slate-gray text-sm mb-8">
                    {t("Votre mot de passe a été réinitialisé avec succès. Vous pouvez maintenant vous connecter.", "Your password has been successfully reset. You can now log in.")}
                </p>
                <Link href="/login" className="btn-primary w-full h-14 flex items-center justify-center text-lg shadow-md hover:shadow-lg transition-all">
                    {t("Se Connecter", "Log In")}
                </Link>
            </div>
        );
    }

    return (
        <form onSubmit={handleSubmit} className="space-y-6">
            <div className="space-y-2">
                <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">
                    {t("Nouveau mot de passe", "New Password")}
                </label>
                <div className="relative">
                    <Lock className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                    <input
                        type="password"
                        required
                        disabled={!token}
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                        placeholder="••••••••"
                        className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                    />
                </div>
            </div>

            <div className="space-y-2">
                <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">
                    {t("Confirmez le mot de passe", "Confirm Password")}
                </label>
                <div className="relative">
                    <ShieldCheck className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                    <input
                        type="password"
                        required
                        disabled={!token}
                        value={confirmPassword}
                        onChange={(e) => setConfirmPassword(e.target.value)}
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
                disabled={loading || !token}
                type="submit"
                className={`w-full btn-primary h-14 text-lg mt-8 flex items-center justify-center gap-2 shadow-md hover:shadow-lg transition-all ${loading || !token ? 'opacity-70 cursor-not-allowed' : ''}`}
            >
                {loading ? <Loader2 className="w-6 h-6 animate-spin" /> : t("Réinitialiser", "Reset Password")}
            </button>
        </form>
    );
}

export default function ResetPasswordPage() {
    const { t } = useLanguageStore();

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
                        <div className="w-16 h-16 bg-medical-blue rounded-2xl flex items-center justify-center mb-6 shadow-lg shadow-medical-blue/30">
                            <Lock className="text-white w-8 h-8" />
                        </div>
                        <h1 className="text-2xl md:text-3xl font-black text-slate-gray-dark tracking-tight text-center">
                            {t("Nouveau mot de passe", "New Password")}
                        </h1>
                        <p className="text-slate-gray mt-4 text-center text-sm font-medium leading-relaxed">
                            {t("Veuillez entrer votre nouveau mot de passe ci-dessous.", "Please enter your new password below.")}
                        </p>
                    </div>

                    <Suspense fallback={<div className="flex justify-center"><Loader2 className="w-8 h-8 animate-spin text-medical-blue" /></div>}>
                        <ResetPasswordForm />
                    </Suspense>
                </div>
            </div>
        </div>
    );
}
