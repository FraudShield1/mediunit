'use client';

import React, { useState, useEffect } from 'react';
import { Search, Package, ChevronRight, ArrowLeft } from 'lucide-react';
import Link from 'next/link';
import Image from 'next/image';
import { fetchProducts } from '@/app/lib/api';
import EmptyState from '@/app/components/EmptyState';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export default function SearchPage() {
    const [query, setQuery] = useState('');
    const [products, setProducts] = useState<any[]>([]);
    const [loading, setLoading] = useState(false);
    const { t } = useLanguageStore();

    useEffect(() => {
        const delayDebounceFn = setTimeout(async () => {
            if (query.trim()) {
                setLoading(true);
                try {
                    const results = await fetchProducts(undefined, query);
                    setProducts(results);
                } catch (error) {
                    console.error('Search failed:', error);
                } finally {
                    setLoading(false);
                }
            } else {
                setProducts([]);
            }
        }, 300);

        return () => clearTimeout(delayDebounceFn);
    }, [query]);

    return (
        <div className="min-h-screen bg-clinic-white pb-20">
            {/* Mobile Header */}
            <div className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/10 px-4 py-4 flex items-center gap-4">
                <Link href="/" aria-label={t('Retour à l\'accueil', 'Back to home')} className="p-2 text-slate-gray hover:text-medical-blue transition-colors">
                    <ArrowLeft className="w-6 h-6" />
                </Link>
                <form
                    className="flex-1 relative"
                    onSubmit={(e) => {
                        e.preventDefault();
                        ; (document.activeElement as HTMLElement)?.blur();
                    }}
                >
                    <Search className="absolute left-4 top-1/2 -translate-y-1/2 text-slate-gray-light w-5 h-5" />
                    <input
                        autoFocus
                        type="text"
                        value={query}
                        onChange={(e) => setQuery(e.target.value)}
                        placeholder={t('Rechercher...', 'Search...')}
                        aria-label={t('Saisissez votre recherche', 'Enter your search')}
                        className="w-full h-12 pl-12 pr-4 rounded-2xl bg-slate-gray-light/5 border-none focus:ring-2 focus:ring-medical-blue/20 transition-all outline-none text-lg"
                    />
                </form>
            </div>

            <main className="max-w-2xl mx-auto p-4">
                {loading ? (
                    <div className="flex flex-col items-center justify-center py-20 gap-4">
                        <div className="w-12 h-12 border-4 border-medical-blue/20 border-t-medical-blue rounded-full animate-spin"></div>
                        <p className="text-slate-gray font-medium">{t('Recherche en cours...', 'Searching...')}</p>
                    </div>
                ) : products.length > 0 ? (
                    <div className="space-y-3">
                        {products.map((product) => (
                            <Link
                                key={product.id}
                                href={`/products/${product.slug}`}
                                className="flex items-center gap-4 p-4 bg-white rounded-3xl border border-slate-gray-light/10 hover:border-medical-blue hover:shadow-lg transition-all group"
                            >
                                <div className="w-16 h-16 bg-slate-gray-light/5 rounded-2xl flex items-center justify-center overflow-hidden relative border border-slate-gray-light/5">
                                    {product.image_url ? (
                                        <Image
                                            src={product.image_url}
                                            alt={product.name}
                                            fill
                                            className="object-contain p-2"
                                            sizes="64px"
                                        />
                                    ) : (
                                        <Package className="w-8 h-8 text-slate-gray-light" />
                                    )}
                                </div>
                                <div className="flex-1 min-w-0">
                                    <h3 className="font-bold text-slate-gray-dark truncate group-hover:text-medical-blue transition-colors">
                                        {product.name}
                                    </h3>
                                    <div className="flex items-center gap-2">
                                        <span className="text-[10px] text-slate-gray font-black uppercase tracking-tight">{product.sku}</span>
                                        {product.packaging_type && (
                                            <span className="text-[8px] bg-medical-blue/5 text-medical-blue px-1.5 rounded font-black">{product.packaging_type}</span>
                                        )}
                                    </div>
                                    <p className="text-medical-blue font-black text-sm mt-1">MAD {product.base_unit_price}</p>
                                </div>
                                <ChevronRight className="w-5 h-5 text-slate-gray-light group-hover:text-medical-blue group-hover:translate-x-1 transition-all" />
                            </Link>
                        ))}
                    </div>
                ) : query && !loading ? (
                    <div className="py-20">
                        <EmptyState
                            icon={Search}
                            title={t('Aucun résultat', 'No results found')}
                            description={t(`Nous n'avons trouvé aucun produit correspondant à "${query}".`, `We couldn't find any products matching "${query}".`)}
                        />
                    </div>
                ) : (
                    <div className="py-20 text-center space-y-4">
                        <div className="w-20 h-20 bg-medical-blue/5 rounded-full flex items-center justify-center mx-auto">
                            <Search className="w-10 h-10 text-medical-blue/40" />
                        </div>
                        <h2 className="text-xl font-bold text-slate-gray-dark">{t('Découvrez MediUnit', 'Explore MediUnit')}</h2>
                        <p className="text-slate-gray max-w-xs mx-auto text-sm">{t('Recherchez des consommables, des kits cliniques et du matériel chirurgical de haute qualité.', 'Search for high-quality consumables, clinical kits, and surgical equipment.')}</p>
                    </div>
                )}
            </main>
        </div>
    );
}
