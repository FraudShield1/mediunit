'use client';

import React, { useState } from 'react';
import Link from '@/app/components/LocalizedLink';
import { Activity, Mail, Lock, User, Building2, Stethoscope, Hash, MapPin, ArrowLeft, Loader2, CheckCircle2 } from 'lucide-react';
import { register } from '@/app/lib/api';
import { useLocalizedRouter as useRouter } from '@/app/hooks/useLocalizedRouter';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export default function RegisterPage() {
    const router = useRouter();
    const { t } = useLanguageStore();
    const [formData, setFormData] = useState({
        email: '',
        password: '',
        full_name: '',
        clinic_name: '',
        specialty: '',
        inpe_number: '',
        city: 'Casablanca'
    });
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState('');
    const [success, setSuccess] = useState(false);
    const [countdown, setCountdown] = useState(5);

    React.useEffect(() => {
        let timer: NodeJS.Timeout;
        if (success && countdown > 0) {
            timer = setTimeout(() => setCountdown(prev => prev - 1), 1000);
        } else if (success && countdown === 0) {
            router.push('/login');
        }
        return () => clearTimeout(timer);
    }, [success, countdown, router]);

    const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => {
        setFormData({ ...formData, [e.target.name]: e.target.value });
    };

    const handleRegister = async (e: React.FormEvent) => {
        e.preventDefault();
        setLoading(true);
        setError('');
        try {
            await register(formData);
            setSuccess(true);
        } catch (err: any) {
            setError(err.message || t("Échec de la demande d'accès", "Access request failed"));
        } finally {
            setLoading(false);
        }
    };

    if (success) {
        return (
            <div className="min-h-screen bg-clinic-white flex items-center justify-center p-4 font-sans">
                <div className="w-full max-w-md bg-white rounded-[2.5rem] p-8 md:p-12 shadow-2xl text-center">
                    <div className="w-20 h-20 bg-sage-green/10 rounded-full flex items-center justify-center mx-auto mb-8">
                        <CheckCircle2 className="w-12 h-12 text-sage-green" />
                    </div>
                    <h1 className="text-3xl font-black text-slate-gray-dark mb-4 tracking-tight">{t("Demande Reçue", "Request Received")}</h1>
                    <p className="text-slate-gray font-medium leading-relaxed mb-8">
                        {t("Votre demande d'accès a été transmise à notre équipe de conformité. Vous recevrez un e-mail de confirmation sous peu.", "Your access request has been forwarded to our compliance team. You will receive a confirmation email shortly.")}
                    </p>
                    <Link href="/login" className="btn-primary w-full h-14 flex flex-col items-center justify-center leading-tight">
                        <span>{t("Retour à la connexion", "Back to Login")}</span>
                        <span className="text-[10px] opacity-70 font-medium">{t(`Redirection dans ${countdown}s...`, `Redirecting in ${countdown}s...`)}</span>
                    </Link>
                </div>
            </div>
        );
    }

    return (
        <div className="min-h-screen bg-clinic-white flex flex-col font-sans pb-12">
            <header className="w-full p-4 md:p-8">
                <Link href="/login" className="inline-flex items-center gap-2 text-slate-gray hover:text-medical-blue transition-colors">
                    <ArrowLeft className="w-5 h-5" />
                    <span className="font-semibold text-sm">{t("Retour à la connexion", "Back to Login")}</span>
                </Link>
            </header>

            <div className="flex-1 flex items-center justify-center p-4">
                <div className="w-full max-w-2xl bg-white rounded-[2.5rem] p-8 md:p-12 shadow-2xl shadow-medical-blue/10 border border-slate-gray-light/10">
                    <div className="flex flex-col items-center mb-10 text-center">
                        <div className="w-16 h-16 bg-medical-blue rounded-2xl flex items-center justify-center mb-6 shadow-lg shadow-medical-blue/30">
                            <Activity className="text-white w-8 h-8" />
                        </div>
                        <h1 className="text-3xl font-black text-slate-gray-dark tracking-tight uppercase">{t("Demander un Accès", "Request Access")}</h1>
                        <p className="text-slate-gray mt-2 text-sm font-medium">{t("Rejoignez MediUnit, le hub B2B pour les professionnels de santé au Maroc.", "Join MediUnit, the B2B hub for healthcare professionals in Morocco.")}</p>
                    </div>

                    <form onSubmit={handleRegister} className="grid grid-cols-1 md:grid-cols-2 gap-6">
                        {/* Section: Identifiants */}
                        <div className="md:col-span-2 space-y-2">
                            <h3 className="text-[10px] font-black text-medical-blue uppercase tracking-[0.2em] mb-4">{t("Informations de Connexion", "Login Information")}</h3>
                        </div>

                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Adresse E-mail Professionnelle", "Professional Email Address")}</label>
                            <div className="relative">
                                <Mail className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="email"
                                    name="email"
                                    required
                                    value={formData.email}
                                    onChange={handleChange}
                                    placeholder="nom@clinique.ma"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Mot de passe", "Password")}</label>
                            <div className="relative">
                                <Lock className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="password"
                                    name="password"
                                    required
                                    value={formData.password}
                                    onChange={handleChange}
                                    placeholder="••••••••"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        {/* Section: Profil Médical */}
                        <div className="md:col-span-2 space-y-2 mt-4">
                            <h3 className="text-[10px] font-black text-medical-blue uppercase tracking-[0.2em] mb-4">{t("Profil Médical & Certification", "Medical Profile & Certification")}</h3>
                        </div>

                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Nom Complet", "Full Name")}</label>
                            <div className="relative">
                                <User className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="text"
                                    name="full_name"
                                    required
                                    value={formData.full_name}
                                    onChange={handleChange}
                                    placeholder="Dr. Ahmed Alami"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Nom de la Clinique / Cabinet", "Clinic / Practice Name")}</label>
                            <div className="relative">
                                <Building2 className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="text"
                                    name="clinic_name"
                                    required
                                    value={formData.clinic_name}
                                    onChange={handleChange}
                                    placeholder="Clinique Internationale"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Spécialité", "Specialty")}</label>
                            <div className="relative">
                                <Stethoscope className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="text"
                                    name="specialty"
                                    required
                                    value={formData.specialty}
                                    onChange={handleChange}
                                    placeholder="Chirurgie Générale"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Numéro INPE (Optionnel)", "INPE Number (Optional)")}</label>
                            <div className="relative">
                                <Hash className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <input
                                    type="text"
                                    name="inpe_number"
                                    value={formData.inpe_number}
                                    onChange={handleChange}
                                    placeholder="012345678 (Optionnel)"
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all"
                                />
                            </div>
                        </div>

                        <div className="space-y-2">
                            <label className="text-xs font-bold text-slate-gray-dark uppercase tracking-widest pl-1">{t("Ville", "City")}</label>
                            <div className="relative">
                                <MapPin className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-gray-light" />
                                <select
                                    name="city"
                                    value={formData.city}
                                    onChange={handleChange}
                                    className="w-full h-14 pl-12 pr-4 bg-clinic-white rounded-2xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark font-medium transition-all appearance-none"
                                >
                                    <option value="Casablanca">Casablanca</option>
                                    <option value="Rabat">Rabat</option>
                                    <option value="Tanger">Tanger</option>
                                    <option value="Marrakech">Marrakech</option>
                                    <option value="Agadir">Agadir</option>
                                    <option value="Fes">Fes</option>
                                    <option value="Autre">{t("Autre", "Other")}</option>
                                </select>
                            </div>
                        </div>

                        {error && (
                            <div className="md:col-span-2 p-4 bg-red-50 border border-red-100 rounded-2xl text-red-600 text-sm font-bold animate-shake">
                                {error}
                            </div>
                        )}

                        <button
                            disabled={loading}
                            type="submit"
                            className={`md:col-span-2 w-full btn-primary h-14 text-lg mt-4 flex items-center justify-center gap-2 group ${loading ? 'opacity-70' : ''}`}
                        >
                            {loading ? <Loader2 className="w-6 h-6 animate-spin" /> : (
                                <>
                                    <span>{t("Envoyer la Demande", "Submit Request")}</span>
                                    <Activity className="w-5 h-5 group-hover:scale-110 transition-transform" />
                                </>
                            )}
                        </button>
                    </form>

                    <p className="mt-8 text-[10px] font-black text-slate-gray text-center uppercase tracking-[0.2em] opacity-50">
                        LISBON • CASABLANCA • CLINICAL COMPLIANCE
                    </p>
                </div>
            </div>
        </div>
    );
}
