'use client';

import React, { useState, useEffect, useMemo } from 'react';
import {
    ShoppingCart,
    ArrowLeft,
    Plus,
    Minus,
    Download,
    CheckCircle2,
    ShieldCheck,
    Truck,
    FileText,
    ChevronRight,
    Share2,
    Info,
    Activity
} from 'lucide-react';
import { useCartStore } from '@/app/store/useCartStore';
import { useAuthStore } from '@/app/store/useAuthStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import ComplianceGateModal from '@/app/components/ComplianceGateModal';
import SupportSection from '@/app/components/SupportSection';
import Link from 'next/link';
import Image from 'next/image';
import { toast } from 'react-hot-toast';
import MedicalPlaceholder from '@/app/components/MedicalPlaceholder';

export default function ProductClient({ slug, initialData, relatedProducts = [] }: { slug: string, initialData?: any, relatedProducts?: any[] }) {
    const { language, setLanguage, t, translateProduct } = useLanguageStore();
    const [product, setProduct] = useState<any>(initialData || null);
    const [loading, setLoading] = useState(!initialData);
    const [quantity, setQuantity] = useState(1);
    const [selectedVariant, setSelectedVariant] = useState<string | null>(null);
    const [isGateOpen, setIsGateOpen] = useState(false);
    const [gatedDocType, setGatedDocType] = useState('');

    // Update the browser tab title when language changes
    useEffect(() => {
        if (!product) return;
        const displayName = translateProduct(product.name, product.name_en);
        document.title = `${displayName} | MediUnit Clinical Sourcing`;
    }, [language, product]);


    // Parse dynamic specs to find variants (Taille, Size, etc.)
    let dynamicSpecs: any = {};
    try {
        dynamicSpecs = typeof product?.specifications === 'string'
            ? JSON.parse(product.specifications)
            : (product?.specifications || {});
    } catch (e) {
        console.error("Spec parse error", e);
    }

    const variantKey = ['Taille', 'Size', 'Type', 'Variante', 'Gauge', 'Dimensions', 'Diamètre', 'Options'].find(key => dynamicSpecs[key]);
    let variantData = variantKey ? dynamicSpecs[variantKey] : '';

    // Attempt to extract from "Caractéristiques" if it contains sizes (e.g. "18G à 25G")
    if (!variantData && dynamicSpecs['Caractéristiques']) {
        const chars = String(dynamicSpecs['Caractéristiques']);
        if (chars.includes(' à ') && (chars.includes('G') || chars.includes('mm') || chars.includes('cm') || chars.includes('CH'))) {
            // We can't automatically generate the range easily without knowing step size, so we leave it, or we could split by ';' and find the one with ' à '
        }
    }

    const variants = useMemo(() => {
        let vars: string[] = [];
        if (typeof variantData === 'string') {
            if (variantData.includes(',')) vars = variantData.split(',').map(v => v.trim());
            else if (variantData.includes(';')) vars = variantData.split(';').map(v => v.trim());
            else if (variantData.includes('/')) vars = variantData.split('/').map(v => v.trim());
            else if (variantData.trim().length > 0) vars = [variantData.trim()];
        } else if (Array.isArray(variantData)) {
            vars = variantData.map(v => String(v));
        }

        // Forcefully inject generic variants if product name implies it but DB specs failed to parse a list
        if (vars.length === 0 && product?.name?.includes('(Multi-Tailles)')) {
            // Look into Caractéristiques for " à " ranges
            const chars = String(dynamicSpecs['Caractéristiques'] || '');
            if (chars.includes(' à ') && chars.includes('G')) {
                vars = ['18G', '19G', '20G', '21G', '22G', '23G', '25G'];
            } else if (product?.name?.includes('Sonde') || product?.name?.includes('Canule')) {
                vars = ['CH08', 'CH10', 'CH12', 'CH14', 'CH16', 'CH18'];
            } else if (product?.name?.includes('Gant')) {
                vars = ['S', 'M', 'L', 'XL'];
            } else if (product?.name?.includes('Masque Laryngé')) {
                vars = ['Taille 1', 'Taille 2', 'Taille 3', 'Taille 4', 'Taille 5'];
            } else {
                // Ultimate fallback so the user can at least select *something*
                vars = ['Standard', 'Large', 'Extra Large'];
            }
        }
        return vars;
    }, [variantData, product?.name, dynamicSpecs]);

    useEffect(() => {
        if (variants.length > 0 && !selectedVariant) {
            setSelectedVariant(variants[0]);
        }
    }, [variants, selectedVariant]);

    const { addItem, openCart } = useCartStore();
    const { isLoggedIn } = useAuthStore();

    const handleDownload = (type: string, url: string) => {
        if (type === 'Certificat CE' && !isLoggedIn) {
            setGatedDocType(type);
            setIsGateOpen(true);
            return;
        }

        if (type === 'Fiche Technique') {
            const apiUrl = process.env.NEXT_PUBLIC_API_URL || 'https://mediunit-backend.a-naouri.workers.dev/api/v1';
            window.open(`${apiUrl}/products/${product.slug}/spec-pdf?lang=${language}`, '_blank');
            return;
        }

        // Public download
        if (url) window.open(url, '_blank');
    };

    const addToCart = () => {
        const translatedName = translateProduct(product.name, product.name_en);
        const displayName = selectedVariant ? `${translatedName} (${selectedVariant})` : translatedName;
        const rawName = selectedVariant ? `${product.name} (${selectedVariant})` : product.name;
        const rawNameEn = selectedVariant ? `${product.name_en || ''} (${selectedVariant})` : product.name_en;
        addItem({
            id: product.id + (selectedVariant || ''),
            productId: product.id,
            name: rawName,
            name_en: rawNameEn || undefined,
            sku: product.sku,
            price: product.base_unit_price * (1 - getDiscountInfo(quantity).discount) || 0,
            basePrice: product.base_unit_price,
            quantity: quantity,
            image: product.image_url || '/images/Pencil Points different colours.jpeg'
        });
        openCart();
        toast.success(`${quantity}x ${displayName} (${product.packaging_type || 'Unité'}) ${t('ajouté(s) au panier !', 'added to cart!')}`);
    };

    const getDiscountInfo = (qty: number) => {
        if (qty >= 50) return { discount: 0.20, message: t("Remise 20% appliquée ! 🎉", "20% discount applied! 🎉") };
        if (qty >= 10) return { discount: 0.10, message: t(`Remise 10% appliquée. Ajoutez ${50 - qty} pour 20% !`, `10% discount applied. Add ${50 - qty} for 20%!`) };
        return { discount: 0, message: t(`💡 Ajoutez ${10 - qty} pour 10% de remise au volume!`, `💡 Add ${10 - qty} for 10% volume discount!`) };
    };

    if (loading) return <div className="min-h-screen flex items-center justify-center bg-clinic-white">
        <div className="w-12 h-12 border-4 border-medical-blue/20 border-t-medical-blue rounded-full animate-spin"></div>
    </div>;

    if (!product) return <div className="min-h-screen flex items-center justify-center bg-clinic-white">
        <div className="text-center">
            <h1 className="text-2xl font-bold text-slate-gray-dark">{t('Produit introuvable', 'Product Not Found')}</h1>
            <Link href="/" className="text-medical-blue mt-4 inline-block hover:underline">{t('Retour au catalogue', 'Back to catalog')}</Link>
        </div>
    </div>;

    return (
        <div className="min-h-screen bg-clinic-white pb-24">
            <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/20">
                <div className="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between">
                    <Link href="/" aria-label={t('Retour au catalogue', 'Back to catalog')} className="p-2 -ml-2 text-slate-gray hover:text-medical-blue transition-colors rounded-full" style={{ width: 48, height: 48, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                        <ArrowLeft className="w-6 h-6" />
                    </Link>
                    <div className="flex items-center gap-4">
                        {/* Language Switcher */}
                        <div className="flex items-center bg-slate-gray-light/5 rounded-full p-1 border border-slate-gray-light/10" role="group" aria-label={t('Changer la langue', 'Change language')}>
                            <button
                                onClick={() => setLanguage('fr')}
                                aria-label="Français"
                                className={`px-2 py-0.5 rounded-full text-[10px] font-black transition-all ${language === 'fr' ? 'bg-medical-blue text-white shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                FR
                            </button>
                            <button
                                onClick={() => setLanguage('en')}
                                aria-label="English"
                                className={`px-2 py-0.5 rounded-full text-[10px] font-black transition-all ${language === 'en' ? 'bg-medical-blue text-white shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                EN
                            </button>
                        </div>
                        <Link href="/cart" aria-label={t('Voir le panier', 'View cart')} className="relative text-slate-gray hover:text-medical-blue transition-colors rounded-full" style={{ width: 48, height: 48, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                            <ShoppingCart className="w-6 h-6" />
                        </Link>
                    </div>
                </div>
            </header>

            <main className="max-w-7xl mx-auto px-4 py-8 md:py-16">
                {/* Professional B2B Breadcrumbs */}
                <nav className="flex flex-wrap items-center gap-2 text-[10px] font-black uppercase tracking-widest text-slate-gray mb-8">
                    <Link href="/" className="hover:text-medical-blue transition-colors">{t('Accueil', 'Home')}</Link>
                    <ChevronRight className="w-3 h-3 text-slate-gray-light" />
                    <Link href="/" className="hover:text-medical-blue transition-colors">{t('Catalogue', 'Catalog')}</Link>
                    {product.category && (
                        <>
                            <ChevronRight className="w-3 h-3 text-slate-gray-light" />
                            <Link href={`/categories/${product.category.slug}`} className="hover:text-medical-blue transition-colors max-w-[150px] truncate">
                                {product.category.name}
                            </Link>
                        </>
                    )}
                    <ChevronRight className="w-3 h-3 text-slate-gray-light" />
                    <span className="text-medical-blue truncate max-w-[200px]">{translateProduct(product.name, product.name_en)}</span>
                </nav>

                <div className="grid grid-cols-1 lg:grid-cols-2 gap-16">
                    {/* Image Section */}
                    <div className="space-y-6">
                        <div className="bg-white rounded-[3rem] p-8 shadow-2xl shadow-medical-blue/5 overflow-hidden ring-1 ring-slate-gray-light/10 relative aspect-square group flex items-center justify-center">
                            {product.image_url ? (
                                <Image
                                    src={product.image_url}
                                    alt={product.name}
                                    fill
                                    sizes="(max-width: 1024px) 100vw, 50vw"
                                    className="object-contain p-8 group-hover:scale-105 transition-transform duration-500"
                                    priority={true}
                                />
                            ) : (
                                <div className="w-1/2 h-1/2 text-medical-blue/20">
                                    <MedicalPlaceholder />
                                </div>
                            )}
                            {/* Stock Indicator */}
                            <div className="absolute top-8 left-8 flex items-center gap-2 bg-white/90 backdrop-blur-sm px-4 py-2 rounded-full border border-sage-green/20 shadow-lg">
                                <div className="w-2 h-2 bg-sage-green rounded-full animate-pulse shadow-[0_0_8px_rgba(34,197,94,0.5)]"></div>
                                <span className="text-[10px] font-black uppercase tracking-widest text-sage-green-dark">{t('En Stock - Expédié sous 24h', 'In Stock - Ships within 24h')}</span>
                            </div>
                        </div>

                        <div className="grid grid-cols-3 gap-4">
                            <div className="bg-white p-4 rounded-3xl border border-slate-gray-light/10 flex flex-col items-center gap-2 text-center">
                                <ShieldCheck className="text-medical-blue w-6 h-6" />
                                <span className="text-[10px] font-bold uppercase tracking-widest text-slate-gray">{t('Certifié CE', 'CE Certified')}</span>
                            </div>
                            <div className="bg-white p-4 rounded-3xl border border-slate-gray-light/10 flex flex-col items-center gap-2 text-center">
                                <CheckCircle2 className="text-sage-green w-6 h-6" />
                                <span className="text-[10px] font-bold uppercase tracking-widest text-slate-gray">{t('Stérile', 'Sterile')}</span>
                            </div>
                            <div className="bg-white p-4 rounded-3xl border border-slate-gray-light/10 flex flex-col items-center gap-2 text-center text-red-500">
                                <Activity className="w-6 h-6" />
                                <span className="text-[10px] font-bold uppercase tracking-widest text-slate-gray">{t('Usage Unique', 'Single Use')}</span>
                            </div>
                        </div>
                    </div>

                    {/* Details Section */}
                    <div className="flex flex-col">
                        <div className="mb-2">
                            <span className="px-3 py-1 bg-medical-blue/10 text-medical-blue text-[10px] font-black rounded-full uppercase tracking-wider">
                                {translateProduct(product.category_name || product.category?.name || '', product.category_name_en) || t('Fourniture Médicale', 'Medical Supply')}
                            </span>
                        </div>
                        <h1 className="text-3xl md:text-5xl font-black text-slate-gray-dark mb-4 leading-tight">
                            {translateProduct(product.name, product.name_en)}
                        </h1>
                        <div className="flex items-center gap-6 mb-8">
                            <p className="text-slate-gray-dark/40 font-mono text-sm uppercase tracking-widest">
                                SKU: {selectedVariant ? `${product.sku}-${selectedVariant.replace(/[^a-zA-Z0-9]/g, '')}` : product.sku}
                            </p>
                            {(product.brand_entity?.name || product.brand) && (
                                <div className="flex items-center gap-3 bg-white px-4 py-2 rounded-2xl border border-slate-gray-light/10 shadow-sm ring-1 ring-slate-gray-light/5">
                                    {product.brand_entity?.logo_url && (
                                        <div className="w-8 h-8 rounded-lg overflow-hidden flex-shrink-0 relative bg-clinic-white border border-slate-gray-light/5 p-1">
                                            <Image
                                                src={product.brand_entity.logo_url}
                                                alt={product.brand_entity.name}
                                                fill
                                                sizes="32px"
                                                className="object-contain"
                                            />
                                        </div>
                                    )}
                                    <span className="text-xs font-black text-slate-gray-dark uppercase tracking-tight">
                                        {translateProduct(product.brand_entity?.name || product.brand, product.brand_entity?.name_en)}
                                    </span>
                                </div>
                            )}
                        </div>

                        <div className="mb-12 bg-white rounded-[2rem] p-8 border border-slate-gray-light/10 shadow-sm relative overflow-hidden">
                            <div className="absolute top-0 right-0 w-32 h-32 bg-medical-blue/5 rounded-full -mr-16 -mt-16 blur-3xl"></div>

                            <h3 className="text-xs font-black uppercase tracking-widest text-slate-gray-light mb-6">{t('Tarification Professionnelle', 'Professional Pricing')}</h3>
                            <div className="flex items-baseline gap-2 mb-6">
                                <span className="text-5xl font-black text-medical-blue">MAD {(product.base_unit_price * (1 - getDiscountInfo(quantity).discount)).toFixed(2)}</span>
                                <span className="text-lg text-slate-gray font-bold uppercase tracking-tighter">/ {product.packaging_type}</span>
                            </div>

                            {/* Variant Selection (If Multi-Size) */}
                            {variants.length > 0 && (
                                <div className="mb-8 p-6 bg-clinic-white rounded-3xl border border-medical-blue/10 shadow-sm relative">
                                    <div className="flex items-center justify-between mb-4">
                                        <p className="text-xs font-black uppercase tracking-widest text-slate-gray">{t('Sélectionner la Variante', 'Select Variant')}</p>
                                        <span className="text-[10px] font-bold text-medical-blue bg-medical-blue/10 px-2 py-1 rounded-md">{variants.length} {t('Options', 'Options')}</span>
                                    </div>
                                    <div className="flex flex-wrap gap-3">
                                        {variants.map((v) => {
                                            const isSelected = selectedVariant === v;
                                            return (
                                                <button
                                                    key={v}
                                                    onClick={() => setSelectedVariant(v)}
                                                    className={`relative px-5 py-3 rounded-2xl text-sm font-black transition-all duration-300 flex items-center gap-2 overflow-hidden
                                                            ${isSelected
                                                            ? 'bg-medical-blue text-white shadow-xl shadow-medical-blue/20 ring-2 ring-medical-blue ring-offset-2'
                                                            : 'bg-white text-slate-gray border border-slate-gray-light/20 hover:border-medical-blue/50 hover:bg-medical-blue/5 hover:text-medical-blue'
                                                        }`}
                                                >
                                                    {isSelected && <div className="absolute inset-0 bg-white/20 blur-md"></div>}
                                                    {isSelected && <CheckCircle2 className="w-4 h-4 relative z-10" />}
                                                    <span className="relative z-10">{v}</span>
                                                </button>
                                            );
                                        })}
                                    </div>
                                </div>
                            )}

                            {/* Tiered Pricing Upsell */}
                            <div className={`p-4 rounded-2xl border transition-all duration-300 flex items-center gap-3 ${getDiscountInfo(quantity).discount > 0 ? 'bg-sage-green/10 border-sage-green/20 text-sage-green-dark' : 'bg-medical-blue/5 border-medical-blue/10 text-medical-blue'}`}>
                                <Info className="w-5 h-5 flex-shrink-0" />
                                <p className="text-xs font-bold leading-relaxed">
                                    {getDiscountInfo(quantity).message}
                                </p>
                            </div>
                        </div>

                        <div className="space-y-8 mb-12">
                            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-6">
                                <div className="flex items-center bg-white rounded-2xl border border-slate-gray-light/20 p-1 self-center">
                                    <button
                                        onClick={() => setQuantity(Math.max(1, quantity - 1))}
                                        className="w-14 h-14 flex items-center justify-center text-slate-gray hover:text-medical-blue transition-colors touch-manipulation"
                                        aria-label={t('Diminuer la quantité', 'Decrease quantity')}
                                    >
                                        <Minus className="w-6 h-6" />
                                    </button>
                                    <span className="w-12 text-center font-black text-xl text-slate-gray-dark">{quantity}</span>
                                    <button
                                        onClick={() => setQuantity(quantity + 1)}
                                        className="w-14 h-14 flex items-center justify-center text-slate-gray hover:text-medical-blue transition-colors touch-manipulation"
                                        aria-label={t('Augmenter la quantité', 'Increase quantity')}
                                    >
                                        <Plus className="w-6 h-6" />
                                    </button>
                                </div>
                                <button
                                    onClick={addToCart}
                                    aria-label={t(`Ajouter ${quantity}x au panier`, `Add ${quantity}x to cart`)}
                                    className="flex-1 btn-primary h-14 text-lg relative group shadow-xl shadow-medical-blue/20 hover:shadow-medical-blue/40 transition-all font-black"
                                >
                                    <span>{t('AJOUTER AU PANIER', 'ADD TO CART')} - MAD {(product.base_unit_price * (1 - getDiscountInfo(quantity).discount) * quantity).toFixed(2)}</span>
                                </button>
                            </div>
                        </div>

                        {/* Compliance Vault Hook */}
                        <div className="bg-slate-gray-light/5 rounded-[2.5rem] p-8 border border-slate-gray-light/10">
                            <h4 className="font-bold text-slate-gray-dark mb-6 flex items-center gap-2 uppercase tracking-widest text-xs">
                                <Download className="w-4 h-4 text-medical-blue" />
                                {t('Conformité & Fiches Techniques', 'Compliance & Data Sheets')}
                            </h4>
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <a
                                    href={product.ce_cert_url || '#'}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    onClick={(e) => {
                                        if (!isLoggedIn) {
                                            e.preventDefault();
                                            setGatedDocType('Certificat CE');
                                            setIsGateOpen(true);
                                        }
                                    }}
                                    className={`bg-white p-5 h-16 rounded-2xl border border-slate-gray-light/10 flex items-center justify-between group hover:border-medical-blue transition-all cursor-pointer`}
                                >
                                    <div className="flex flex-col text-left">
                                        <span className="text-xs font-black text-slate-gray-dark uppercase tracking-tight">{t('Certificat CE', 'CE Certificate')}</span>
                                        <span className="text-[10px] text-slate-gray">
                                            {product.brand_entity?.manufacturer ? `${t('Par', 'By')} ${product.brand_entity.manufacturer}` : t('Document Officiel', 'Official Document')}
                                        </span>
                                    </div>
                                    <ShieldCheck className="w-5 h-5 text-medical-blue group-hover:scale-110 transition-transform" />
                                </a>
                                <button
                                    onClick={() => handleDownload('Fiche Technique', product.tech_sheet_url)}
                                    className="bg-white p-5 h-16 rounded-2xl border border-slate-gray-light/10 flex items-center justify-between group hover:border-medical-blue transition-all"
                                >
                                    <div className="flex flex-col text-left">
                                        <span className="text-xs font-black text-slate-gray-dark uppercase tracking-tight">{t('Fiche Technique', 'Technical Sheet')}</span>
                                        <span className="text-[10px] text-slate-gray">{t('Généré par MediUnit', 'Generated by MediUnit')}</span>
                                    </div>
                                    <Download className="w-5 h-5 text-medical-blue group-hover:scale-110 transition-transform" />
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                {/* Structured Specs Table */}
                <div className="mt-24 grid grid-cols-1 lg:grid-cols-3 gap-16 border-t border-slate-gray-light/10 pt-16">
                    <div className="lg:col-span-2">
                        <h3 className="text-2xl font-black text-slate-gray-dark mb-8 tracking-tight">{t('Description Clinique', 'Clinical Description')}</h3>
                        <div className="text-slate-gray leading-relaxed text-lg font-medium mb-12 clinical-description prose prose-slate max-w-none">
                            <div dangerouslySetInnerHTML={{
                                __html: (translateProduct(product.description || '', product.description_en)).replace(/<table[\s\S]*?<\/table>/gi, '')
                            }} />
                        </div>

                        <div className="bg-white rounded-[2.5rem] p-8 md:p-12 border border-slate-gray-light/10 shadow-xl shadow-medical-blue/5">
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-x-12 gap-y-6">
                                {(() => {
                                    let dynamicSpecs = {};
                                    try {
                                        dynamicSpecs = typeof product.specifications === 'string'
                                            ? JSON.parse(product.specifications)
                                            : (product.specifications || {});
                                    } catch (e) {
                                        console.error("Spec parse error", e);
                                    }

                                    const specList = [
                                        { label: t('Conditionnement', 'Packaging'), value: product.packaging_type },
                                        { label: t('Référence SKU', 'SKU Reference'), value: product.sku },
                                        { label: t('Marque', 'Brand'), value: product.brand_entity?.name || product.brand },
                                        { label: t('Fabricant', 'Manufacturer'), value: product.brand_entity?.manufacturer },
                                        // Merge dynamic specs, filtering out common keys
                                        ...Object.entries(dynamicSpecs)
                                            .filter(([k]) => !['marque', 'brand', 'fabricant', 'manufacturer', 'sku', 'packaging', 'conditionnement'].includes(k.toLowerCase()))
                                            .map(([key, value]) => ({
                                                label: translateProduct(key.charAt(0).toUpperCase() + key.slice(1).replace(/_/g, ' ')),
                                                value: translateProduct(Array.isArray(value) ? value.join(', ') : String(value))
                                            }))
                                    ];

                                    return specList.filter(s => s.value && String(s.value).trim() !== '').map((spec, i) => (
                                        <div key={i} className="flex justify-between items-center py-4 border-b border-slate-gray-light/10 font-sans">
                                            <span className="text-xs font-black text-slate-gray tracking-widest uppercase">{spec.label}</span>
                                            <span className="text-sm font-black text-slate-gray-dark text-right ml-4">{spec.value}</span>
                                        </div>
                                    ));
                                })()}
                            </div>
                        </div>
                    </div>

                    <div className="space-y-8">
                        <div className="bg-medical-blue rounded-[2.5rem] p-8 text-white shadow-2xl shadow-medical-blue/30">
                            <Truck className="w-10 h-10 mb-6 text-white/50" />
                            <h3 className="text-xl font-black mb-4 uppercase tracking-tight">{t('Logistique B2B', 'B2B Logistics')}</h3>
                            <ul className="space-y-4">
                                <li className="flex items-start gap-3 text-sm font-bold">
                                    <div className="w-1.5 h-1.5 bg-white rounded-full mt-1.5 flex-shrink-0"></div>
                                    <span>{t('Livraison 24h sur Casablanca & Environs', '24h Delivery in Casablanca & Surroundings')}</span>
                                </li>
                                <li className="flex items-start gap-3 text-sm font-bold">
                                    <div className="w-1.5 h-1.5 bg-white rounded-full mt-1.5 flex-shrink-0"></div>
                                    <span>{t('Expédition Maroc (48h-72h)', 'Morocco Shipping (48h-72h)')}</span>
                                </li>
                                <li className="flex items-start gap-3 text-sm font-bold">
                                    <div className="w-1.5 h-1.5 bg-white rounded-full mt-1.5 flex-shrink-0"></div>
                                    <span>{t('Facturation certifiée pour comptabilité clinique', 'Certified invoicing for clinical accounting')}</span>
                                </li>
                            </ul>
                        </div>

                        <div className="bg-white rounded-[2.5rem] p-8 border border-slate-gray-light/10 shadow-sm flex flex-col items-center text-center">
                            <div className="w-16 h-16 bg-medical-blue/5 rounded-full flex items-center justify-center mb-4">
                                <ShieldCheck className="w-8 h-8 text-medical-blue" />
                            </div>
                            <h4 className="font-black text-slate-gray-dark mb-2 uppercase tracking-tight">{t('Standard MediUnit', 'MediUnit Standard')}</h4>
                            <p className="text-xs text-slate-gray font-medium leading-relaxed">
                                {t('Chaque produit est rigoureusement sélectionné pour répondre aux exigences des plateaux techniques marocains.', 'Each product is rigorously selected to meet the requirements of Moroccan technical platforms.')}
                            </p>
                        </div>
                    </div>
                </div>

                {/* Related Products Carousel */}
                {relatedProducts && relatedProducts.length > 0 && (
                    <div className="mt-24 border-t border-slate-gray-light/10 pt-16">
                        <div className="flex flex-col sm:flex-row sm:justify-between sm:items-end mb-8 gap-4">
                            <div>
                                <h3 className="text-2xl font-black text-slate-gray-dark tracking-tight">{t('Produits Similaires', 'Related Products')}</h3>
                                <p className="text-slate-gray mt-2">{t('Essentiel pour votre plateau technique', 'Essential for your technical platform')}</p>
                            </div>
                            {product.category?.slug && (
                                <Link href={`/categories/${product.category.slug}`} className="text-medical-blue font-bold text-sm uppercase tracking-widest hover:underline flex items-center gap-1 group">
                                    {t('Voir la catégorie', 'See category')} <ChevronRight className="w-4 h-4 group-hover:translate-x-1 transition-transform" />
                                </Link>
                            )}
                        </div>
                        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                            {relatedProducts.map((p: any) => (
                                <Link key={p.id} href={`/products/${p.slug}`} className="group bg-white rounded-3xl p-6 border border-slate-gray-light/10 shadow-sm hover:shadow-xl hover:shadow-medical-blue/5 hover:border-medical-blue/20 transition-all duration-300 flex flex-col h-full">
                                    <div className="relative w-full aspect-square mb-6 bg-clinic-white rounded-2xl flex items-center justify-center overflow-hidden">
                                        {p.image_url ? (
                                            <Image
                                                src={p.image_url}
                                                alt={p.name}
                                                fill
                                                sizes="(max-width: 640px) 100vw, (max-width: 1024px) 50vw, 25vw"
                                                className="object-contain p-4 group-hover:scale-110 transition-transform duration-500"
                                            />
                                        ) : (
                                            <div className="w-12 h-12 text-medical-blue/20">
                                                <MedicalPlaceholder />
                                            </div>
                                        )}
                                    </div>
                                    <div className="flex-1 flex flex-col">
                                        {(p.brand_entity?.name || p.brand) && (
                                            <div className="text-[10px] font-black uppercase text-medical-blue mb-2 tracking-widest">{p.brand_entity?.name || p.brand}</div>
                                        )}
                                        <h4 className="font-bold text-slate-gray-dark line-clamp-2 leading-tight mb-4 flex-1">{translateProduct(p.name, p.name_en)}</h4>
                                        <div className="flex items-center justify-between mt-auto pt-4 border-t border-slate-gray-light/5">
                                            <div className="text-sm font-black text-slate-gray-dark">MAD {p.base_unit_price}</div>
                                            <div className="w-8 h-8 rounded-full bg-medical-blue/5 flex items-center justify-center group-hover:bg-medical-blue group-hover:text-white text-medical-blue transition-colors">
                                                <Plus className="w-4 h-4" />
                                            </div>
                                        </div>
                                    </div>
                                </Link>
                            ))}
                        </div>
                    </div>
                )}

                <SupportSection productContext={`${product.name} (SKU: ${product.sku})`} />
            </main>
            <ComplianceGateModal
                isOpen={isGateOpen}
                onClose={() => setIsGateOpen(false)}
                documentType={gatedDocType}
            />
        </div>
    );
}
