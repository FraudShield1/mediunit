'use client';

import React from 'react';
import { Plus, Edit2, Trash2, ShieldCheck, User, ExternalLink } from 'lucide-react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface BrandsTabProps {
    brands: any[];
    searchTerm: string;
    openBrandModal: (brand?: any) => void;
    handleDeleteBrand: (id: number) => Promise<void>;
}

const BrandsTab: React.FC<BrandsTabProps> = ({
    brands,
    searchTerm,
    openBrandModal,
    handleDeleteBrand
}) => {
    const { t } = useLanguageStore();

    const filteredBrands = brands.filter((b: any) => {
        const s = searchTerm.toLowerCase();
        if (!s) return true;
        return String(b.name || '').toLowerCase().includes(s) || String(b.manufacturer || '').toLowerCase().includes(s);
    });

    return (
        <div className="bg-white rounded-3xl shadow-sm border border-gray-100 overflow-hidden transition-all duration-300">
            {/* Filters Header */}
            <div className="px-8 py-6 border-b border-gray-50 flex flex-col md:flex-row md:items-center gap-4 justify-between bg-gray-50/30">
                <div>
                    <h2 className="text-xl font-black text-gray-900 tracking-tight">{t('Marques & Partenaires', 'Brands & Partners')}</h2>
                    <p className="text-xs font-semibold text-gray-400 mt-0.5">{t('Gérez les fabricants et les certificats CE.', 'Manage manufacturers and CE certificates.')}</p>
                </div>
                <button
                    onClick={() => openBrandModal()}
                    className="bg-gray-900 hover:bg-black text-white px-8 py-3 rounded-2xl text-sm font-black transition-all shadow-xl shadow-black/10 active:scale-95 flex items-center justify-center gap-2"
                >
                    <Plus className="w-5 h-5" />
                    {t('Nouvelle Marque', 'New Brand')}
                </button>
            </div>

            {/* Content Swiper / Table */}
            <div className="overflow-x-auto">
                <table className="w-full text-left">
                    <thead>
                        <tr className="bg-gray-50/50 text-[11px] font-black text-gray-400 uppercase tracking-[0.15em] border-b border-gray-50">
                            <th className="px-8 py-5">Brand Name</th>
                            <th className="px-8 py-5">Manufacturer Origin</th>
                            <th className="px-8 py-5">Regulatory Status</th>
                            <th className="px-8 py-5 text-right">Actions</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-gray-50">
                        {filteredBrands.map((b) => (
                            <tr key={b.id} className="group hover:bg-gray-50/50 transition-colors">
                                <td className="px-8 py-6">
                                    <div className="flex items-center gap-3">
                                        <div className="w-10 h-10 bg-gray-100 rounded-xl flex items-center justify-center border border-gray-100 group-hover:bg-white transition-colors">
                                            <ShieldCheck className="w-5 h-5 text-medical-blue opacity-40 group-hover:opacity-100 transition-opacity" />
                                        </div>
                                        <div className="font-black text-gray-900 leading-tight">{b.name}</div>
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    <div className="flex items-center gap-2 text-xs font-black text-gray-500 uppercase tracking-wider">
                                        <User className="w-3.5 h-3.5 opacity-50" />
                                        {b.manufacturer || 'Unknown Manufacturer'}
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    {b.ce_certificate_url ? (
                                        <a
                                            href={b.ce_certificate_url}
                                            target="_blank"
                                            className="inline-flex items-center gap-1.5 px-3 py-1 bg-emerald-50 text-emerald-700 rounded-lg text-[10px] font-black border border-emerald-100 hover:bg-emerald-100 transition-all uppercase tracking-widest leading-none"
                                        >
                                            <ExternalLink className="w-3 h-3" />
                                            CE CERTIFIED
                                        </a>
                                    ) : (
                                        <span className="text-[10px] font-black text-gray-300 uppercase tracking-widest">{t('Non spécifié', 'Not Specified')}</span>
                                    )}
                                </td>
                                <td className="px-8 py-6 text-right opacity-0 group-hover:opacity-100 transition-opacity">
                                    <div className="flex items-center justify-end gap-2">
                                        <button
                                            onClick={() => openBrandModal(b)}
                                            className="p-2.5 rounded-xl border border-gray-100 text-gray-400 hover:text-medical-blue hover:bg-medical-blue/5 transition-all shadow-sm"
                                        >
                                            <Edit2 className="w-5 h-5" />
                                        </button>
                                        <button
                                            onClick={() => handleDeleteBrand(Number(b.id))}
                                            className="p-2.5 rounded-xl border border-rose-50 text-gray-400 hover:text-rose-600 hover:bg-rose-50 transition-all shadow-sm"
                                        >
                                            <Trash2 className="w-5 h-5" />
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
};

export default BrandsTab;
