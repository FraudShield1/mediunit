'use client';

import React from 'react';
import { Search, Save, TrendingUp, Users, LayoutDashboard } from 'lucide-react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface SettingsTabProps {
    settings: any[];
    setSettings: (settings: any[]) => void;
    handleSaveSettings: (e: React.FormEvent) => Promise<void>;
    isSavingSettings: boolean;
}

const SettingsTab: React.FC<SettingsTabProps> = ({
    settings,
    setSettings,
    handleSaveSettings,
    isSavingSettings
}) => {
    const { t } = useLanguageStore();

    const findSetting = (key: string) => settings.find(s => s.key === key)?.value || '';
    const updateSetting = (key: string, value: string) => {
        setSettings(settings.map(s => s.key === key ? { ...s, value } : s));
    };

    return (
        <div className="bg-white rounded-3xl shadow-sm border border-gray-100 overflow-hidden transition-all duration-500 hover:shadow-xl hover:shadow-gray-200/50">
            <div className="px-8 py-8 border-b border-gray-50 flex flex-col md:flex-row md:items-center gap-6 justify-between bg-gradient-to-r from-gray-50/50 to-white">
                <div>
                    <h2 className="text-2xl font-black text-gray-900 tracking-tight">{t('Paramètres de la Plateforme', 'Platform Settings')}</h2>
                    <p className="text-sm font-medium text-gray-500 mt-1">{t('Gérez les configurations globales, les frais et les contacts.', 'Manage global configurations, fees, and contacts.')}</p>
                </div>
                <button
                    onClick={handleSaveSettings}
                    disabled={isSavingSettings}
                    className="bg-gray-900 hover:bg-black text-white px-8 py-3.5 rounded-2xl text-sm font-black shadow-xl shadow-black/10 transition-all flex items-center justify-center gap-2 disabled:opacity-50 active:scale-95"
                >
                    {isSavingSettings ? (
                        <div className="w-5 h-5 border-2 border-white/20 border-t-white rounded-full animate-spin" />
                    ) : (
                        <Save className="w-5 h-5" />
                    )}
                    {t('Sauvegarder les modifications', 'Save Changes')}
                </button>
            </div>

            <form onSubmit={handleSaveSettings} className="p-10 space-y-12">
                <div className="grid grid-cols-1 lg:grid-cols-2 gap-x-20 gap-y-12">
                    {/* Contact Section */}
                    <div className="space-y-8">
                        <div className="flex items-center gap-3">
                            <div className="p-2 bg-blue-50 rounded-lg">
                                <Users className="w-5 h-5 text-blue-600" />
                            </div>
                            <h3 className="text-xs font-black text-gray-400 uppercase tracking-[0.2em]">
                                {t('Support & Contact', 'Support & Contact')}
                            </h3>
                        </div>
                        <div className="space-y-6">
                            <div className="group">
                                <label className="block text-[11px] font-black text-gray-500 uppercase tracking-wider mb-2 ml-1 group-focus-within:text-medical-blue transition-colors">
                                    {t('Numéro WhatsApp', 'WhatsApp Number')}
                                </label>
                                <input
                                    type="text"
                                    value={findSetting('whatsapp_number')}
                                    onChange={e => updateSetting('whatsapp_number', e.target.value)}
                                    className="w-full bg-gray-50/50 border border-gray-200 rounded-2xl px-5 py-4 text-sm font-semibold focus:bg-white focus:ring-4 focus:ring-medical-blue/5 focus:border-medical-blue outline-none transition-all"
                                    placeholder="+212 ..."
                                />
                            </div>
                            <div className="group">
                                <label className="block text-[11px] font-black text-gray-500 uppercase tracking-wider mb-2 ml-1 group-focus-within:text-medical-blue transition-colors">
                                    Email de Support
                                </label>
                                <input
                                    type="email"
                                    value={findSetting('support_email')}
                                    onChange={e => updateSetting('support_email', e.target.value)}
                                    className="w-full bg-gray-50/50 border border-gray-200 rounded-2xl px-5 py-4 text-sm font-semibold focus:bg-white focus:ring-4 focus:ring-medical-blue/5 focus:border-medical-blue outline-none transition-all"
                                    placeholder="support@mediunit.ma"
                                />
                            </div>
                        </div>
                    </div>

                    {/* Financials Section */}
                    <div className="space-y-8">
                        <div className="flex items-center gap-3">
                            <div className="p-2 bg-emerald-50 rounded-lg">
                                <TrendingUp className="w-5 h-5 text-emerald-600" />
                            </div>
                            <h3 className="text-xs font-black text-gray-400 uppercase tracking-[0.2em]">
                                Logistique & Taxes
                            </h3>
                        </div>
                        <div className="space-y-6">
                            <div className="grid grid-cols-2 gap-4">
                                <div className="group">
                                    <label className="block text-[11px] font-black text-gray-500 uppercase tracking-wider mb-2 ml-1">
                                        Livraison (MAD)
                                    </label>
                                    <input
                                        type="number"
                                        value={findSetting('shipping_standard')}
                                        onChange={e => updateSetting('shipping_standard', e.target.value)}
                                        className="w-full bg-gray-50/50 border border-gray-200 rounded-2xl px-5 py-4 text-sm font-semibold focus:bg-white focus:border-medical-blue outline-none transition-all"
                                    />
                                </div>
                                <div className="group">
                                    <label className="block text-[11px] font-black text-gray-500 uppercase tracking-wider mb-2 ml-1">
                                        Seuil Gratuité
                                    </label>
                                    <input
                                        type="number"
                                        value={findSetting('shipping_free_threshold')}
                                        onChange={e => updateSetting('shipping_free_threshold', e.target.value)}
                                        className="w-full bg-gray-50/50 border border-gray-200 rounded-2xl px-5 py-4 text-sm font-semibold focus:bg-white focus:border-medical-blue outline-none transition-all"
                                    />
                                </div>
                            </div>
                            <div className="group">
                                <label className="block text-[11px] font-black text-gray-500 uppercase tracking-wider mb-2 ml-1 group-focus-within:text-medical-blue transition-colors">
                                    Taux TVA (%)
                                </label>
                                <input
                                    type="number"
                                    value={findSetting('vat_rate')}
                                    onChange={e => updateSetting('vat_rate', e.target.value)}
                                    className="w-full bg-gray-50/50 border border-gray-200 rounded-2xl px-5 py-4 text-sm font-semibold focus:bg-white focus:ring-4 focus:ring-medical-blue/5 focus:border-medical-blue outline-none transition-all"
                                />
                            </div>
                        </div>
                    </div>

                    {/* Announcements Section */}
                    <div className="col-span-full space-y-8 pt-8 border-t border-gray-100">
                        <div className="flex items-center gap-3">
                            <div className="p-2 bg-amber-50 rounded-lg">
                                <LayoutDashboard className="w-5 h-5 text-amber-600" />
                            </div>
                            <h3 className="text-xs font-black text-gray-400 uppercase tracking-[0.2em]">
                                Communication Boutique
                            </h3>
                        </div>
                        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12">
                            <div className="group">
                                <label className="block text-[11px] font-black text-gray-500 uppercase tracking-wider mb-2 ml-1">Texte de la Bannière</label>
                                <textarea
                                    rows={4}
                                    value={findSetting('banner_text')}
                                    onChange={e => updateSetting('banner_text', e.target.value)}
                                    className="w-full bg-gray-50/50 border border-gray-200 rounded-2xl px-5 py-4 text-sm font-semibold focus:bg-white focus:ring-4 focus:ring-medical-blue/5 focus:border-medical-blue outline-none transition-all resize-none"
                                    placeholder="Promotion, annonce important..."
                                />
                            </div>
                            <div className="bg-amber-50/50 rounded-[2rem] p-8 border border-amber-100/50 flex flex-col justify-center">
                                <div className="flex items-center justify-between gap-6">
                                    <div>
                                        <h4 className="text-lg font-black text-amber-900 leading-tight">Mode Maintenance</h4>
                                        <p className="text-sm font-medium text-amber-700/80 mt-1.5">Désactive instantanément les commandes sur toute la plateforme.</p>
                                    </div>
                                    <button
                                        type="button"
                                        onClick={() => updateSetting('maintenance_mode', findSetting('maintenance_mode') === 'true' ? 'false' : 'true')}
                                        className={`w-16 h-8 rounded-full transition-all duration-300 relative shrink-0 ${findSetting('maintenance_mode') === 'true' ? 'bg-amber-600 shadow-inner' : 'bg-gray-300'}`}
                                    >
                                        <div className={`absolute top-1 w-6 h-6 bg-white rounded-full transition-all duration-300 shadow-md ${findSetting('maintenance_mode') === 'true' ? 'left-9' : 'left-1'}`} />
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    );
};

export default SettingsTab;
