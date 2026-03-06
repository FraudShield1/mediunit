'use client';

import React from 'react';
import { ShieldCheck, Lock, X, LogIn, UserPlus } from 'lucide-react';
import Link from 'next/link';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface ComplianceGateModalProps {
    isOpen: boolean;
    onClose: () => void;
    documentType: string;
}

export default function ComplianceGateModal({ isOpen, onClose, documentType }: ComplianceGateModalProps) {
    const { t } = useLanguageStore();

    if (!isOpen) return null;

    return (
        <div className="fixed inset-0 z-[100] flex items-center justify-center p-4">
            <div
                className="absolute inset-0 bg-slate-gray-dark/40 backdrop-blur-sm"
                onClick={onClose}
            />

            <div className="relative w-full max-w-lg bg-white rounded-[2.5rem] shadow-2xl overflow-hidden border border-slate-gray-light/10 animate-in fade-in zoom-in duration-300">
                {/* Header Gradient */}
                <div className="h-2 bg-gradient-to-r from-medical-blue via-medical-blue-dark to-medical-blue" />

                <button
                    onClick={onClose}
                    aria-label={t('Fermer la fenêtre', 'Close window')}
                    className="absolute top-6 right-6 p-2 text-slate-gray hover:text-medical-blue transition-colors rounded-full hover:bg-slate-gray-light/10"
                >
                    <X className="w-5 h-5" />
                </button>

                <div className="p-8 md:p-12 text-center">
                    <div className="w-20 h-20 bg-medical-blue/5 rounded-full flex items-center justify-center mx-auto mb-8 relative">
                        <ShieldCheck className="w-10 h-10 text-medical-blue" />
                        <div className="absolute -top-1 -right-1 w-8 h-8 bg-white rounded-full flex items-center justify-center shadow-md">
                            <Lock className="w-4 h-4 text-medical-blue" />
                        </div>
                    </div>

                    <h2 className="text-2xl font-black text-slate-gray-dark mb-4 tracking-tight uppercase">
                        {t('Accès Géré par Conformité', 'Compliance Managed Access')}
                    </h2>

                    <p className="text-slate-gray font-medium leading-relaxed mb-8">
                        {t('Le document ', 'The document ')}<span className="text-medical-blue font-bold tracking-tight">&quot;{documentType}&quot;</span>{t(' est une ressource professionnelle réservée aux clients enregistrés.', ' is a professional resource reserved for registered clients.')}
                        <br />
                        <span className="text-xs mt-2 block opacity-70">{t('Conformément aux régulations de l\'ANPMP et du Ministère de la Santé.', 'In accordance with the regulations of the ANPMP and the Ministry of Health.')}</span>
                    </p>

                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <Link
                            href="/login"
                            className="flex items-center justify-center gap-2 h-14 rounded-2xl bg-medical-blue text-white font-black uppercase tracking-widest text-xs hover:bg-medical-blue-dark transition-all shadow-lg shadow-medical-blue/20"
                        >
                            <LogIn className="w-4 h-4" />
                            {t("Se Connecter", "Log In")}
                        </Link>
                        <Link
                            href="/register"
                            className="flex items-center justify-center gap-2 h-14 rounded-2xl bg-white border-2 border-medical-blue text-medical-blue font-black uppercase tracking-widest text-xs hover:bg-medical-blue/5 transition-all"
                        >
                            <UserPlus className="w-4 h-4" />
                            {t("Créer un Compte", "Create Account")}
                        </Link>
                    </div>

                    <p className="mt-8 text-[10px] font-bold text-slate-gray uppercase tracking-[0.2em] opacity-50">
                        LISBON • CASABLANCA • CLINICAL COMPLIANCE
                    </p>
                </div>
            </div>
        </div>
    );
}
