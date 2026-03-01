'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { Search, ShoppingCart, User, Package, ChevronRight, Activity, Plus, Globe } from 'lucide-react';
import { useCartStore } from '@/app/store/useCartStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface ClientHomeProps {
    initialProducts: any[];
    initialCategories: any[];
}

export default function ClientHome({ initialProducts, initialCategories }: ClientHomeProps) {
    const [searchQuery, setSearchQuery] = useState('');
    const { language, setLanguage, t } = useLanguageStore();
    const { items, addItem } = useCartStore();

    const cartCount = items.reduce((acc, item) => acc + item.quantity, 0);

    const filteredProducts = initialProducts.filter(p =>
        (p.name || '').toLowerCase().includes(searchQuery.toLowerCase()) ||
        (p.sku || '').toLowerCase().includes(searchQuery.toLowerCase())
    );

    const handleAddToCart = (e: React.MouseEvent, product: any) => {
        e.preventDefault();
        addItem({
            id: product.id,
            productId: product.id,
            name: product.name,
            sku: product.sku,
            price: product.base_unit_price || 0,
            basePrice: product.base_unit_price || 0,
            quantity: 1,
            image: product.image_url || '/images/Pencil Points different colours.jpeg'
        });
        // We'll skip the alert for now as it's a bit intrusive, but keep it if requested
    };

    return (
        <div className="min-h-screen pb-24 font-sans selection:bg-medical-blue/10 bg-clinic-white">
            {/* Header / Top Nav */}
            <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/20">
                <div className="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between">
                    <div className="flex items-center gap-2">
                        <div className="w-8 h-8 bg-medical-blue rounded-lg flex items-center justify-center">
                            <Activity className="text-white w-5 h-5" />
                        </div>
                        <span className="text-xl font-bold tracking-tight text-medical-blue-dark">MediUnit</span>
                    </div>
                    <div className="flex items-center gap-4">
                        {/* Language Switcher */}
                        <div className="flex items-center bg-slate-gray-light/5 rounded-full p-1 border border-slate-gray-light/10">
                            <button
                                onClick={() => setLanguage('fr')}
                                className={`px-2 py-0.5 rounded-full text-[10px] font-black transition-all ${language === 'fr' ? 'bg-medical-blue text-white shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                FR
                            </button>
                            <button
                                onClick={() => setLanguage('en')}
                                className={`px-2 py-0.5 rounded-full text-[10px] font-black transition-all ${language === 'en' ? 'bg-medical-blue text-white shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                EN
                            </button>
                        </div>

                        <Link href="/cart" className="p-2 relative text-slate-gray hover:text-medical-blue transition-colors">
                            <ShoppingCart className="w-6 h-6" />
                            {cartCount > 0 && (
                                <span className="absolute -top-1 -right-1 w-5 h-5 bg-medical-blue text-white text-[10px] font-bold rounded-full flex items-center justify-center border-2 border-white">
                                    {cartCount}
                                </span>
                            )}
                        </Link>
                        <Link href="/login" className="hidden md:flex items-center gap-2 text-slate-gray hover:text-medical-blue transition-colors">
                            <User className="w-6 h-6" />
                            <span className="text-sm font-medium">{t('Se connecter', 'Login')}</span>
                        </Link>
                    </div>
                </div>
            </header>

            <main className="max-w-7xl mx-auto px-4">
                {/* Zocdoc Style Hero Search */}
                <section className="py-12 md:py-24 text-center">
                    <h1 className="text-4xl md:text-6xl font-bold mb-6 text-slate-gray-dark tracking-tight leading-tight">
                        {t('Que cherchez-vous aujourd\'hui ?', 'What are you looking for today?')}
                    </h1>
                    <p className="text-slate-gray mb-12 text-lg md:text-xl max-w-2xl mx-auto font-light">
                        {t('Commandez des fournitures chirurgicales et des kits cliniques avec tarification unitaire et livraison le lendemain.', 'Order surgical supplies and clinical kits with unit pricing and next-day delivery.')}
                    </p>

                    <div className="relative max-w-3xl mx-auto z-50">
                        <div className="relative group">
                            <Search className="absolute left-6 top-1/2 -translate-y-1/2 text-slate-gray-light group-focus-within:text-medical-blue w-6 h-6 transition-colors" />
                            <input
                                type="text"
                                value={searchQuery}
                                onChange={(e) => setSearchQuery(e.target.value)}
                                placeholder={t('Rechercher seringues, masques, gants...', 'Search syringes, masks, gloves...')}
                                className="w-full h-16 md:h-24 pl-16 pr-6 rounded-[2rem] text-lg md:text-2xl border-none shadow-2xl shadow-medical-blue/10 focus:ring-4 focus:ring-medical-blue/5 transition-all outline-none bg-white"
                            />
                        </div>

                        {/* Search Autocomplete Suggestions */}
                        {searchQuery.length > 1 && (
                            <div className="absolute top-full left-0 right-0 mt-4 bg-white rounded-3xl shadow-2xl border border-slate-gray-light/10 overflow-hidden text-left py-2">
                                {filteredProducts.length > 0 ? (
                                    filteredProducts.slice(0, 5).map(product => (
                                        <Link
                                            key={product.id}
                                            href={`/products/${product.slug}`}
                                            className="px-8 py-4 hover:bg-medical-blue/5 flex items-center justify-between group transition-colors"
                                        >
                                            <div className="flex items-center gap-4">
                                                <div className="w-10 h-10 bg-slate-gray-light/10 rounded-xl flex items-center justify-center overflow-hidden">
                                                    {product.image_url ? (
                                                        <img src={product.image_url} alt={product.name} className="w-full h-full object-cover" />
                                                    ) : (
                                                        <Package className="w-5 h-5 text-slate-gray-light" />
                                                    )}
                                                </div>
                                                <div>
                                                    <p className="font-bold text-slate-gray-dark group-hover:text-medical-blue transition-colors">{product.name}</p>
                                                    <div className="flex items-center gap-2">
                                                        <p className="text-[10px] text-slate-gray uppercase font-medium">{product.sku}</p>
                                                        {product.packaging_type && <span className="text-[8px] bg-medical-blue/5 text-medical-blue px-1.5 rounded font-black">{product.packaging_type}</span>}
                                                    </div>
                                                </div>
                                            </div>
                                            <ChevronRight className="w-5 h-5 text-slate-gray-light group-hover:text-medical-blue group-hover:translate-x-1 transition-all" />
                                        </Link>
                                    ))
                                ) : (
                                    <div className="px-8 py-6 text-center text-slate-gray font-medium">
                                        {t(`Aucun produit trouvé pour "${searchQuery}"`, `No product found for "${searchQuery}"`)}
                                    </div>
                                )}
                            </div>
                        )}
                    </div>
                </section>

                {/* Clinical Pillars / Categories */}
                <section className="py-8 border-t border-slate-gray-light/10">
                    <h2 className="text-xl font-black text-slate-gray-dark uppercase tracking-widest mb-8 text-center">
                        {t('Piliers Cliniques', 'Clinical Pillars')}
                    </h2>
                    <div className="flex flex-wrap justify-center gap-4 max-w-5xl mx-auto">
                        {initialCategories.filter(cat => cat.slug !== 'unknown').map((cat) => (
                            <Link
                                key={cat.id}
                                href={`/categories/${cat.slug}`}
                                className="group flex flex-col items-center gap-3 p-6 bg-white rounded-[2rem] border border-slate-gray-light/10 hover:border-medical-blue hover:shadow-xl hover:shadow-medical-blue/5 transition-all w-40 text-center"
                            >
                                <div className="w-12 h-12 rounded-2xl bg-medical-blue/5 flex items-center justify-center group-hover:bg-medical-blue group-hover:text-white transition-colors">
                                    <Package className="w-6 h-6" />
                                </div>
                                <span className="text-xs font-black uppercase tracking-tight text-slate-gray group-hover:text-medical-blue">
                                    {cat.name}
                                </span>
                            </Link>
                        ))}
                    </div>
                </section>

                {/* Main Product Grid Sections */}
                <section className="py-16">
                    <div className="flex items-center justify-between mb-12">
                        <div>
                            <h2 className="text-3xl font-black text-slate-gray-dark tracking-tight mb-2">
                                {searchQuery ? t(`Résultats (${filteredProducts.length})`, `Results (${filteredProducts.length})`) : t('Consommables Essentiels', 'Essential Consumables')}
                            </h2>
                            <p className="text-slate-gray text-sm">{t('Sélectionnés pour la continuité des soins cliniques.', 'Curated for clinical care continuity.')}</p>
                        </div>
                    </div>

                    <div className="grid grid-cols-2 lg:grid-cols-4 gap-6">
                        {filteredProducts.map((product) => (
                            <div key={product.id} className="card p-5 group flex flex-col items-center text-center bg-white rounded-[2rem] border border-slate-gray-light/10 shadow-sm hover:shadow-xl transition-all duration-300">
                                <Link href={`/products/${product.slug}`} className="w-full">
                                    <div className="w-full aspect-square bg-slate-gray-light/5 rounded-[2rem] mb-6 flex items-center justify-center group-hover:bg-medical-blue-light/30 transition-all duration-500 overflow-hidden relative border border-slate-gray-light/5">
                                        {product.image_url && product.image_url !== "/" ? (
                                            <img src={product.image_url} alt={product.name} className="w-full h-full object-contain p-4 group-hover:scale-110 transition-transform duration-500" />
                                        ) : (
                                            <Package className="text-slate-gray-light w-12 h-12 group-hover:text-medical-blue group-hover:scale-110 transition-all duration-500" />
                                        )}
                                        <div className="absolute top-4 left-4 flex items-center gap-1.5 bg-white/90 backdrop-blur-sm px-2 py-1 rounded-full shadow-sm border border-sage-green/10">
                                            <div className="w-1.5 h-1.5 rounded-full bg-sage-green animate-pulse"></div>
                                            <span className="text-[8px] font-black uppercase tracking-widest text-sage-green-dark">{t('En Stock', 'In Stock')}</span>
                                        </div>
                                        {product.brand_name && (
                                            <div className="absolute bottom-4 right-4 bg-medical-blue/90 backdrop-blur-sm px-2 py-1 rounded-lg shadow-sm border border-white/20">
                                                <span className="text-[8px] font-black uppercase tracking-widest text-white">{product.brand_name}</span>
                                            </div>
                                        )}
                                    </div>
                                    <h4 className="font-bold text-slate-gray-dark mb-1 line-clamp-2 h-10 overflow-hidden text-sm uppercase px-2">
                                        {product.name}
                                    </h4>
                                    <p className="text-[10px] text-slate-gray mb-4 font-medium uppercase tracking-widest">SKU: {product.sku}</p>
                                </Link>

                                <div className="w-full mt-auto pt-4 border-t border-slate-gray-light/10 flex items-center justify-between">
                                    <div className="text-left font-sans">
                                        <p className="text-[9px] text-slate-gray font-black uppercase tracking-tighter">{t('Prix', 'Price')} {product.packaging_type ? `/ ${product.packaging_type}` : ''}</p>
                                        <span className="font-black text-medical-blue text-lg">MAD {product.base_unit_price}</span>
                                    </div>
                                    <button
                                        onClick={(e) => handleAddToCart(e, product)}
                                        className="w-10 h-10 rounded-2xl bg-medical-blue/5 text-medical-blue flex items-center justify-center hover:bg-medical-blue hover:text-white transition-all transform active:scale-95 shadow-sm"
                                    >
                                        <Plus className="w-6 h-6" />
                                    </button>
                                </div>
                            </div>
                        ))}
                    </div>
                </section>
            </main>
        </div>
    );
}
