'use client';

import React from 'react';
import Image from 'next/image';
import { Search, Plus, Edit2, Trash2, Package, Tag, Layers } from 'lucide-react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface ProductsTabProps {
    products: any[];
    searchTerm: string;
    setSearchTerm: (s: string) => void;
    openProductModal: (product?: any) => void;
    handleDeleteProduct: (id: string) => Promise<void>;
}

const ProductsTab: React.FC<ProductsTabProps> = ({
    products,
    searchTerm,
    setSearchTerm,
    openProductModal,
    handleDeleteProduct
}) => {
    const { t } = useLanguageStore();

    const filteredProducts = products.filter((p: any) => {
        const s = searchTerm.toLowerCase();
        if (!s) return true;
        return String(p.name || '').toLowerCase().includes(s) || String(p.sku || '').toLowerCase().includes(s);
    });

    return (
        <div className="bg-white rounded-3xl shadow-sm border border-gray-100 overflow-hidden transition-all duration-300">
            {/* Filters Header */}
            <div className="px-8 py-6 border-b border-gray-50 flex flex-col md:flex-row md:items-center gap-4 justify-between bg-gray-50/30">
                <div className="relative group">
                    <Search className="w-4 h-4 text-gray-400 absolute left-4 top-1/2 -translate-y-1/2 group-focus-within:text-medical-blue transition-colors" />
                    <input
                        value={searchTerm}
                        onChange={(e) => setSearchTerm(e.target.value)}
                        placeholder={t('Rechercher un produit...', 'Search: Name / SKU')}
                        className="pl-11 pr-4 py-3 bg-white border border-gray-200 rounded-2xl text-sm font-semibold w-80 focus:ring-4 focus:ring-medical-blue/5 focus:border-medical-blue outline-none transition-all shadow-sm shadow-gray-100"
                    />
                </div>
                <button
                    onClick={() => openProductModal()}
                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-8 py-3 rounded-2xl text-sm font-black transition-all shadow-lg shadow-medical-blue/20 active:scale-95 flex items-center justify-center gap-2"
                >
                    <Plus className="w-5 h-5" />
                    {t('Nouveau Produit', 'New Product')}
                </button>
            </div>

            {/* Content Swiper / Table */}
            <div className="overflow-x-auto">
                <table className="w-full text-left">
                    <thead>
                        <tr className="bg-gray-50/50 text-[11px] font-black text-gray-400 uppercase tracking-[0.15em] border-b border-gray-50">
                            <th className="px-8 py-5">Product Details</th>
                            <th className="px-8 py-5">SKU & Category</th>
                            <th className="px-8 py-5">Base Price (MAD)</th>
                            <th className="px-8 py-5">Inventory Status</th>
                            <th className="px-8 py-5 text-right">Management Actions</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-gray-50">
                        {filteredProducts.map((p) => (
                            <tr key={p.id} className="group hover:bg-gray-50/50 transition-colors">
                                <td className="px-8 py-6">
                                    <div className="flex items-center gap-4">
                                        <div className="w-12 h-12 bg-gray-50 rounded-xl overflow-hidden shadow-inner border border-gray-100 group-hover:scale-110 transition-transform duration-300 shrink-0">
                                            {p.image_url ? (
                                                <Image src={p.image_url} alt="" width={48} height={48} className="object-contain w-full h-full" />
                                            ) : (
                                                <div className="w-full h-full flex items-center justify-center">
                                                    <Package className="w-5 h-5 text-gray-300" />
                                                </div>
                                            )}
                                        </div>
                                        <div>
                                            <div className="font-black text-gray-900 leading-tight mb-0.5">{p.name || '-'}</div>
                                            <div className="text-[10px] font-black text-gray-300 uppercase tracking-widest">{p.id.toString().slice(0, 8)}</div>
                                        </div>
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    <div className="flex items-center gap-2 text-xs font-black text-gray-700 mb-1">
                                        <Tag className="w-3.5 h-3.5 text-medical-blue" />
                                        {p.sku || '-'}
                                    </div>
                                    <div className="flex items-center gap-1.5 text-[11px] font-black text-gray-400 uppercase tracking-[0.1em]">
                                        <Layers className="w-3 h-3" />
                                        {p.category_name || '-'}
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    <div className="font-black text-gray-900 text-base italic underline decoration-gray-100 decoration-2">
                                        {Number(p.base_unit_price).toLocaleString()}
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    <div className={`text-xs font-black uppercase tracking-widest ${p.stock_quantity <= 5 ? 'text-rose-600 animate-pulse' : 'text-emerald-600'}`}>
                                        {p.stock_quantity || 0} UNITS LEFT
                                    </div>
                                </td>
                                <td className="px-8 py-6 text-right opacity-0 group-hover:opacity-100 transition-opacity">
                                    <div className="flex items-center justify-end gap-2">
                                        <button
                                            onClick={() => openProductModal(p)}
                                            className="p-2.5 rounded-xl border border-gray-100 text-gray-400 hover:text-medical-blue hover:bg-medical-blue/5 transition-all shadow-sm"
                                        >
                                            <Edit2 className="w-5 h-5" />
                                        </button>
                                        <button
                                            onClick={() => handleDeleteProduct(p.id)}
                                            className="p-2.5 rounded-xl border border-rose-50 bg-white text-gray-400 hover:text-rose-600 hover:bg-rose-50 transition-all shadow-sm shadow-rose-50"
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

export default ProductsTab;
