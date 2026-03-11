'use client';

import React, { useState } from 'react';
import Link from '@/app/components/LocalizedLink';
import Image from 'next/image';
import { Search, ShoppingCart, User, Package, ChevronRight, Activity, Plus, Globe, AlertCircle, X } from 'lucide-react';
import EmptyState from './EmptyState';
import Logo from './Logo';
import { useCartStore } from '@/app/store/useCartStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import SupportSection from './SupportSection';
import Fuse from 'fuse.js';
import { resolveImageUrl, fetchProducts } from '@/app/lib/api';

interface ClientHomeProps {
    initialProducts: any[];
    initialCategories: any[];
}

export default function ClientHome({ initialProducts, initialCategories }: ClientHomeProps) {
    const [searchQuery, setSearchQuery] = useState('');
    const [searchResults, setSearchResults] = useState<any[]>([]);
    const [isSearching, setIsSearching] = useState(false);
    const { language, setLanguage, t, translateProduct } = useLanguageStore();
    const { items, addItem, openCart } = useCartStore();

    const cartCount = items.reduce((acc, item) => acc + item.quantity, 0);

    const fuse = new Fuse(initialProducts, {
        keys: ['name', 'name_en', 'sku', 'category.name', 'brand', 'brand_entity.name'],
        threshold: 0.3,
        distance: 100
    });

    React.useEffect(() => {
        if (searchQuery.trim().length < 2) {
            setSearchResults([]);
            return;
        }

        setIsSearching(true);
        const timer = setTimeout(async () => {
            try {
                const data = await fetchProducts(undefined, searchQuery);
                setSearchResults(data as any[]);
            } catch (error) {
                console.error('Search debouncing error:', error);
            } finally {
                setIsSearching(false);
            }
        }, 300);

        return () => clearTimeout(timer);
    }, [searchQuery]);

    // Use Fuse for instant UI feedback, override with Server results once loaded
    const filteredProducts = searchQuery.trim()
        ? (searchResults.length > 0 ? searchResults : fuse.search(searchQuery).map(result => result.item))
        : initialProducts;

    const handleAddToCart = (e: React.MouseEvent, product: any) => {
        e.preventDefault();
        addItem({
            id: product.id,
            productId: product.id,
            name: product.name,
            name_en: product.name_en,
            sku: product.sku,
            price: product.base_unit_price || 0,
            basePrice: product.base_unit_price || 0,
            quantity: 1,
            image: resolveImageUrl(product.image_url) || '/images/Pencil Points different colours.jpeg'
        });
        openCart();
    };

    const categoryImages: Record<string, string> = {
        'anesthesie': '/images/quincke_19g_cream.png',
        'urologie': '/images/Generic_Rusch.jpg',
        'orl': '/images/Subglottic_Tube.png',
        'chirurgie-generale': '/images/Set.png',
        'reanimation': '/images/Reinforced_Tube.jpg',
        'gastro-enterologie': '/images/AB_Tube.jpg'
    };

    return (
        <div className="min-h-screen pb-24 font-sans selection:bg-medical-blue/10 bg-clinic-white">
            {/* Header / Top Nav */}
            <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/20">
                <div className="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between">
                    <Logo />
                    <div className="flex items-center gap-4">
                        {/* Language Switcher */}
                        <div className="flex items-center bg-slate-gray-light/5 rounded-full p-1 border border-slate-gray-light/10">
                            <button
                                onClick={() => setLanguage('fr')}
                                aria-label="Passer en français"
                                aria-current={language === 'fr' ? 'true' : 'false'}
                                className={`px-2 py-0.5 rounded-full text-[10px] font-black transition-all ${language === 'fr' ? 'bg-medical-blue text-white shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                FR
                            </button>
                            <button
                                onClick={() => setLanguage('en')}
                                aria-label="Switch to English"
                                aria-current={language === 'en' ? 'true' : 'false'}
                                className={`px-2 py-0.5 rounded-full text-[10px] font-black transition-all ${language === 'en' ? 'bg-medical-blue text-white shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                EN
                            </button>
                        </div>

                        <Link href="/cart" aria-label={t('Voir le panier', 'View cart')} title={t('Voir le panier', 'View cart')} className="p-2 relative text-slate-gray hover:text-medical-blue transition-colors">
                            <ShoppingCart className="w-6 h-6" aria-hidden="true" />
                            <span className="sr-only">{t('Voir le panier', 'View cart')}</span>
                            {cartCount > 0 && (
                                <span className="absolute -top-1 -right-1 w-5 h-5 bg-medical-blue text-white text-[10px] font-bold rounded-full flex items-center justify-center border-2 border-white">
                                    {cartCount}
                                </span>
                            )}
                        </Link>
                        <Link href="/login" aria-label={t('Se connecter', 'Login')} className="hidden md:flex items-center gap-2 text-slate-gray hover:text-medical-blue transition-colors">
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
                        <form
                            className="relative group"
                            onSubmit={(e) => {
                                e.preventDefault();
                                ; (document.activeElement as HTMLElement)?.blur();
                            }}
                        >
                            <Search className="absolute left-6 top-1/2 -translate-y-1/2 text-slate-gray-light w-6 h-6 transition-colors group-focus-within:text-medical-blue" />
                            <input
                                type="text"
                                value={searchQuery}
                                onChange={(e) => setSearchQuery(e.target.value)}
                                placeholder={t('Rechercher seringues, masques, gants...', 'Search syringes, masks, gloves...')}
                                aria-label={t('Rechercher des produits médicaux', 'Search medical products')}
                                className="w-full h-16 md:h-24 pl-16 pr-16 rounded-[2rem] text-lg md:text-2xl border-none shadow-2xl shadow-medical-blue/10 focus:ring-4 focus:ring-medical-blue/5 transition-all outline-none bg-white"
                            />
                            {searchQuery && (
                                <button
                                    type="button"
                                    onClick={() => setSearchQuery('')}
                                    className="absolute right-6 top-1/2 -translate-y-1/2 p-2 text-slate-gray-light hover:text-medical-blue transition-colors"
                                    aria-label={t('Effacer la recherche', 'Clear search')}
                                >
                                    <X className="w-6 h-6" />
                                </button>
                            )}
                        </form>

                        {/* Search Autocomplete Suggestions */}
                        {searchQuery.length > 1 && (
                            <div className="absolute top-full left-0 right-0 mt-4 glass rounded-[2rem] overflow-hidden text-left py-2 animate-slide-up z-[60]">
                                {filteredProducts.length > 0 ? (
                                    filteredProducts.slice(0, 5).map(product => (
                                        <Link
                                            key={product.id}
                                            href={`/products/${product.slug}`}
                                            className="px-8 py-4 hover:bg-medical-blue/5 flex items-center justify-between group transition-colors"
                                        >
                                            <div className="flex items-center gap-4">
                                                <div className="w-10 h-10 bg-slate-gray-light/10 rounded-xl flex items-center justify-center overflow-hidden relative">
                                                    {product.image_url ? (
                                                        <Image src={resolveImageUrl(product.image_url)} alt={product.name} fill sizes="40px" className="object-cover" />
                                                    ) : (
                                                        <Package className="w-5 h-5 text-slate-gray-light" />
                                                    )}
                                                </div>
                                                <div>
                                                    <p className="font-bold text-slate-gray-dark group-hover:text-medical-blue transition-colors">{translateProduct(product.name, product.name_en)}</p>
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
                                    <div className="py-4 px-2">
                                        <EmptyState
                                            icon={Search}
                                            title={t('Aucun résultat', 'No results found')}
                                            description={t(`Nous n'avons trouvé aucun produit correspondant à "${searchQuery}".`, `We couldn't find any products matching "${searchQuery}".`)}
                                        />
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
                    <div className="grid grid-cols-2 md:grid-cols-5 gap-6 max-w-6xl mx-auto">
                        {initialCategories.filter(cat => cat.slug !== 'unknown').slice(0, 10).map((cat) => {
                            return (
                                <Link
                                    key={cat.id}
                                    href={`/categories/${cat.slug}`}
                                    aria-label={t(`Voir la catégorie ${cat.name}`, `View category ${cat.name}`)}
                                    className="group flex flex-col items-center gap-6 p-8 bg-white rounded-[2.5rem] border border-slate-gray-light/5 hover:border-medical-blue hover:shadow-2xl hover:shadow-medical-blue/10 transition-all duration-500 text-center"
                                >
                                    <div className="w-16 h-16 rounded-2xl bg-medical-blue/5 flex items-center justify-center group-hover:bg-medical-blue group-hover:rotate-6 transition-all duration-500">
                                        <Package className="w-8 h-8 text-medical-blue group-hover:text-white transition-colors" />
                                    </div>
                                    <span className="text-xs font-black uppercase tracking-widest text-slate-gray-dark group-hover:text-medical-blue leading-tight">
                                        {translateProduct(cat.name, cat.name_en)}
                                    </span>
                                </Link>
                            );
                        })}
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
                                    <div className="w-full aspect-square bg-slate-gray-light/5 rounded-[2rem] mb-6 group-hover:bg-medical-blue-light/30 transition-all duration-500 overflow-hidden relative border border-slate-gray-light/5">
                                        {product.image_url && product.image_url !== "/" ? (
                                            <Image
                                                src={resolveImageUrl(product.image_url)}
                                                alt={product.name}
                                                fill
                                                sizes="(max-width: 768px) 50vw, 25vw"
                                                className="object-contain p-6 group-hover:scale-110 transition-transform duration-500"
                                            />
                                        ) : (
                                            <div className="absolute inset-0 flex items-center justify-center">
                                                <Package className="text-slate-gray-light w-12 h-12 group-hover:text-medical-blue group-hover:scale-110 transition-all duration-500" />
                                            </div>
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
                                    <h3 className="font-black text-slate-gray-dark leading-tight line-clamp-2 md:text-lg mb-4">
                                        {translateProduct(product.name, product.name_en)}
                                    </h3>
                                    <p className="text-[10px] text-slate-gray mb-4 font-medium uppercase tracking-widest">SKU: {product.sku}</p>
                                </Link>

                                <div className="w-full mt-auto pt-4 border-t border-slate-gray-light/10 flex items-center justify-between">
                                    <div className="text-left font-sans">
                                        <p className="text-[9px] text-slate-gray font-black uppercase tracking-tighter">{t('Prix', 'Price')} {product.packaging_type ? `/ ${product.packaging_type}` : ''}</p>
                                        <span className="font-black text-medical-blue text-lg">MAD {product.base_unit_price}</span>
                                    </div>
                                    <button
                                        onClick={(e) => handleAddToCart(e, product)}
                                        aria-label={t(`Ajouter ${product.name} au panier`, `Add ${product.name} to cart`)}
                                        title={t(`Ajouter ${product.name} au panier`, `Add ${product.name} to cart`)}
                                        className="w-10 h-10 rounded-2xl bg-medical-blue/5 text-medical-blue flex items-center justify-center hover:bg-medical-blue hover:text-white transition-all transform active:scale-95 shadow-sm"
                                    >
                                        <Plus className="w-6 h-6" aria-hidden="true" />
                                        <span className="sr-only">{t('Ajouter au panier', 'Add to cart')}</span>
                                    </button>
                                </div>
                            </div>
                        ))}
                    </div>
                </section>

                <SupportSection />
            </main>
        </div>
    );
}
