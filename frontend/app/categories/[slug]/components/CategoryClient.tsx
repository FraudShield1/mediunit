'use client';

import React from 'react';
import { Package, Plus, ChevronRight, Activity, ShoppingCart } from 'lucide-react';
import Link from 'next/link';
import { useCartStore } from '@/app/store/useCartStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface CategoryClientProps {
    slug: string;
    initialProducts: any[];
    initialCategory: any;
}

export default function CategoryClient({ initialProducts, initialCategory }: CategoryClientProps) {
    const { language, setLanguage, t } = useLanguageStore();
    const { items, addItem } = useCartStore();
    const cartCount = items.reduce((acc, item) => acc + item.quantity, 0);

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
        alert(`${product.name} ${t('ajouté au panier !', 'added to cart!')}`);
    };

    return (
        <div className="min-h-screen pb-24 font-sans selection:bg-medical-blue/10 bg-clinic-white">
            <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/20">
                <div className="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between">
                    <Link href="/" className="flex items-center gap-2">
                        <div className="w-8 h-8 bg-medical-blue rounded-lg flex items-center justify-center">
                            <Activity className="text-white w-5 h-5" />
                        </div>
                        <span className="text-xl font-bold tracking-tight text-medical-blue-dark">MediUnit</span>
                    </Link>
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
                    </div>
                </div>
            </header>

            <main className="max-w-7xl mx-auto px-4 py-12">
                <div className="mb-12">
                    <nav className="flex items-center gap-2 text-xs font-bold text-slate-gray-light uppercase tracking-widest mb-4">
                        <Link href="/" className="hover:text-medical-blue transition-colors">{t('Accueil', 'Home')}</Link>
                        <ChevronRight className="w-3 h-3" />
                        <span className="text-medical-blue">{t('Catégories', 'Categories')}</span>
                    </nav>
                    <h1 className="text-4xl md:text-5xl font-black text-slate-gray-dark tracking-tight">
                        {initialCategory?.name || 'Fournitures'}
                    </h1>
                </div>

                <div className="grid grid-cols-2 lg:grid-cols-4 gap-6">
                    {initialProducts.map((product) => (
                        <div key={product.id} className="card p-5 group flex flex-col items-center text-center bg-white rounded-[2rem] border border-slate-gray-light/10 shadow-sm hover:shadow-xl transition-all">
                            <Link href={`/products/${product.slug}`} className="w-full">
                                <div className="w-full aspect-square bg-slate-gray-light/5 rounded-[2rem] mb-6 flex items-center justify-center group-hover:bg-medical-blue-light/30 transition-all duration-500 overflow-hidden relative">
                                    {product.image_url && product.image_url !== "/" ? (
                                        <img
                                            src={product.image_url}
                                            alt={product.name}
                                            className="w-full h-full object-cover group-hover:scale-110 transition-all duration-500"
                                            onError={(e) => {
                                                (e.target as any).src = "https://via.placeholder.com/300?text=Medical+Supply";
                                            }}
                                        />
                                    ) : (
                                        <Package className="text-slate-gray-light w-12 h-12 group-hover:text-medical-blue group-hover:scale-110 transition-all duration-500" />
                                    )}
                                </div>
                                <h4 className="font-bold text-slate-gray-dark mb-1 line-clamp-2 h-10 overflow-hidden text-sm uppercase px-2">
                                    {product.name}
                                </h4>
                                <p className="text-[10px] text-slate-gray mb-4 font-medium uppercase tracking-widest">SKU: {product.sku}</p>
                            </Link>

                            <div className="w-full mt-auto pt-4 border-t border-slate-gray-light/10 flex items-center justify-between">
                                <div className="text-left">
                                    <p className="text-[10px] text-slate-gray font-bold uppercase tracking-tighter">{t('Prix', 'Price')}</p>
                                    <span className="font-black text-medical-blue text-lg">MAD {product.base_unit_price}</span>
                                </div>
                                <button
                                    onClick={(e) => handleAddToCart(e, product)}
                                    className="w-12 h-12 rounded-2xl bg-medical-blue/5 text-medical-blue flex items-center justify-center hover:bg-medical-blue hover:text-white transition-all transform active:scale-90"
                                >
                                    <Plus className="w-6 h-6" />
                                </button>
                            </div>
                        </div>
                    ))}
                </div>
            </main>
        </div>
    );
}
