import React from 'react';
import { ShieldCheck, Activity, Globe } from 'lucide-react';

export default function Footer() {
    return (
        <footer className="bg-white border-t border-slate-gray-light/10 pt-16 pb-24 md:pb-16 mt-24">
            <div className="max-w-7xl mx-auto px-4">
                <div className="grid grid-cols-1 md:grid-cols-3 gap-12 mb-12">
                    <div className="space-y-4">
                        <div className="flex items-center gap-2">
                            <Activity className="w-6 h-6 text-medical-blue" />
                            <span className="text-xl font-bold text-medical-blue-dark">MediUnit</span>
                        </div>
                        <p className="text-sm text-slate-gray leading-relaxed max-w-xs">
                            Premier hub B2B dédié aux consommables critiques et kits spécialisés pour les praticiens au Maroc.
                        </p>
                    </div>

                    <div className="space-y-4">
                        <h4 className="font-bold text-slate-gray-dark flex items-center gap-2">
                            <ShieldCheck className="w-5 h-5 text-sage-green" />
                            Hub Logistique Maroc
                        </h4>
                        <p className="text-xs text-slate-gray">
                            Zone Industrielle Sapino, Nouaceur<br />
                            Casablanca, Maroc<br />
                            Livraison 24/48h : Casablanca, Rabat, Marrakech.
                        </p>
                    </div>

                    <div className="space-y-4">
                        <h4 className="font-bold text-slate-gray-dark flex items-center gap-2">
                            <Globe className="w-5 h-5 text-medical-blue" />
                            Siège Administratif
                        </h4>
                        <p className="text-xs text-slate-gray">
                            Avenida da Liberdade 110<br />
                            1269-046 Lisboa, Portugal<br />
                            Corporate Correspondence & Legal Affairs.
                        </p>
                    </div>
                </div>

                <div className="pt-8 border-t border-slate-gray-light/10 text-center">
                    <p className="text-[10px] font-black uppercase tracking-widest text-slate-gray-light">
                        © 2026 MediUnit Medical Systems. Tous droits réservés.
                    </p>
                </div>
            </div>
        </footer>
    );
}
