'use client';

import React, { useState, useEffect } from 'react';
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
import Footer from '@/app/components/Footer';
import BottomNav from '@/app/components/BottomNav';
import { useCartStore } from '@/app/store/useCartStore';
import { useAuthStore } from '@/app/store/useAuthStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import ComplianceGateModal from '@/app/components/ComplianceGateModal';
import Link from 'next/link';
import Image from 'next/image';
import { toast } from 'react-hot-toast';

export default function ProductClient({ slug, initialData }: { slug: string, initialData?: any }) {
    const { language, setLanguage, t } = useLanguageStore();
    const [product, setProduct] = useState<any>(initialData || null);
    const [loading, setLoading] = useState(!initialData);
    const [quantity, setQuantity] = useState(1);
    const [selectedVariant, setSelectedVariant] = useState<string | null>(null);
    const [isGateOpen, setIsGateOpen] = useState(false);
    const [gatedDocType, setGatedDocType] = useState('');

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

    let variants: string[] = [];
    if (typeof variantData === 'string') {
        if (variantData.includes(',')) variants = variantData.split(',').map(v => v.trim());
        else if (variantData.includes(';')) variants = variantData.split(';').map(v => v.trim());
        else if (variantData.includes('/')) variants = variantData.split('/').map(v => v.trim());
        else if (variantData.trim().length > 0) variants = [variantData.trim()];
    } else if (Array.isArray(variantData)) {
        variants = variantData.map(v => String(v));
    }

    // Forcefully inject generic variants if product name implies it but DB specs failed to parse a list
    if (variants.length === 0 && product?.name?.includes('(Multi-Tailles)')) {
        // Look into Caractéristiques for " à " ranges
        const chars = String(dynamicSpecs['Caractéristiques'] || '');
        if (chars.includes(' à ') && chars.includes('G')) {
            variants = ['18G', '19G', '20G', '21G', '22G', '23G', '25G'];
        } else if (product.name.includes('Sonde') || product.name.includes('Canule')) {
            variants = ['CH08', 'CH10', 'CH12', 'CH14', 'CH16', 'CH18'];
        } else if (product.name.includes('Gant')) {
            variants = ['S', 'M', 'L', 'XL'];
        } else if (product.name.includes('Masque Laryngé')) {
            variants = ['Taille 1', 'Taille 2', 'Taille 3', 'Taille 4', 'Taille 5'];
        } else {
            // Ultimate fallback so the user can at least select *something*
            variants = ['Standard', 'Large', 'Extra Large'];
        }
    }

    useEffect(() => {
        if (variants.length > 0 && !selectedVariant) {
            setSelectedVariant(variants[0]);
        }
    }, [variants, selectedVariant]);

    const { addItem } = useCartStore();
    const { isLoggedIn } = useAuthStore();

    const handleDownload = (type: string, url: string) => {
        if (type === 'Certificat CE' && !isLoggedIn) {
            setGatedDocType(type);
            setIsGateOpen(true);
            return;
        }

        if (type === 'Fiche Technique') {
            const apiUrl = process.env.NEXT_PUBLIC_API_URL || 'https://mediunit-backend.a-naouri.workers.dev/api/v1';
            window.open(`${apiUrl}/products/${product.slug}/spec-pdf`, '_blank');
            return;
        }

        // Public download
        if (url) window.open(url, '_blank');
    };

    const addToCart = () => {
        const displayName = selectedVariant ? `${product.name} (${selectedVariant})` : product.name;
        addItem({
            id: product.id + (selectedVariant || ''),
            productId: product.id,
            name: displayName,
            sku: product.sku,
            price: product.base_unit_price * (1 - getDiscountInfo(quantity).discount) || 0,
            basePrice: product.base_unit_price,
            quantity: quantity,
            image: product.image_url || '/images/Pencil Points different colours.jpeg'
        });
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
            <h1 className="text-2xl font-bold text-slate-gray-dark">Produit introuvable</h1>
            <Link href="/" className="text-medical-blue mt-4 inline-block hover:underline">Retour au catalogue</Link>
        </div>
    </div>;

    return (
        <div className="min-h-screen bg-clinic-white pb-24">
            <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/20">
                <div className="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between">
                    <Link href="/" className="p-2 -ml-2 text-slate-gray hover:text-medical-blue transition-colors rounded-full" style={{ width: 48, height: 48, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                        <ArrowLeft className="w-6 h-6" />
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
                        <Link href="/cart" className="relative text-slate-gray hover:text-medical-blue transition-colors rounded-full" style={{ width: 48, height: 48, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
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
                    <Link href="/catalogue" className="hover:text-medical-blue transition-colors">{t('Catalogue', 'Catalog')}</Link>
                    {product.category && (
                        <>
                            <ChevronRight className="w-3 h-3 text-slate-gray-light" />
                            <Link href={`/categories/${product.category.slug}`} className="hover:text-medical-blue transition-colors max-w-[150px] truncate">
                                {product.category.name}
                            </Link>
                        </>
                    )}
                    <ChevronRight className="w-3 h-3 text-slate-gray-light" />
                    <span className="text-medical-blue truncate max-w-[200px]">{product.name}</span>
                </nav>

                <div className="grid grid-cols-1 lg:grid-cols-2 gap-16">
                    {/* Image Section */}
                    <div className="space-y-6">
                        <div className="bg-white rounded-[3rem] p-8 shadow-2xl shadow-medical-blue/5 overflow-hidden ring-1 ring-slate-gray-light/10 relative aspect-square group">
                            <Image
                                src={product.image_url || "https://via.placeholder.com/600?text=Product+Image"}
                                alt={product.name}
                                fill
                                className="object-contain p-8 group-hover:scale-105 transition-transform duration-500"
                                priority={true}
                            />
                            {/* Stock Indicator */}
                            <div className="absolute top-8 left-8 flex items-center gap-2 bg-white/90 backdrop-blur-sm px-4 py-2 rounded-full border border-sage-green/20 shadow-lg">
                                <div className="w-2 h-2 bg-sage-green rounded-full animate-pulse shadow-[0_0_8px_rgba(34,197,94,0.5)]"></div>
                                <span className="text-[10px] font-black uppercase tracking-widest text-sage-green-dark">En Stock - Expédié sous 24h</span>
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
                                {product.category_name || product.category?.name || 'Fourniture Médicale'}
                            </span>
                        </div>
                        <h1 className="text-3xl md:text-5xl font-black text-slate-gray-dark mb-4 leading-tight">
                            {product.name}
                        </h1>
                        <div className="flex items-center gap-4 mb-8">
                            <p className="text-slate-gray-dark/40 font-mono text-sm uppercase tracking-widest">
                                SKU: {selectedVariant ? `${product.sku}-${selectedVariant.replace(/[^a-zA-Z0-9]/g, '')}` : product.sku}
                            </p>
                            {(product.brand_entity?.name || product.brand) && (
                                <span className="text-[10px] font-black text-medical-blue bg-medical-blue/5 px-2 py-1 rounded-full ring-1 ring-medical-blue/10 uppercase tracking-widest">
                                    {product.brand_entity?.name || product.brand}
                                </span>
                            )}
                        </div>

                        <div className="mb-12 bg-white rounded-[2rem] p-8 border border-slate-gray-light/10 shadow-sm relative overflow-hidden">
                            <div className="absolute top-0 right-0 w-32 h-32 bg-medical-blue/5 rounded-full -mr-16 -mt-16 blur-3xl"></div>

                            <h3 className="text-xs font-black uppercase tracking-widest text-slate-gray-light mb-6">Tarification Professionnelle</h3>
                            <div className="flex items-baseline gap-2 mb-6">
                                <span className="text-5xl font-black text-medical-blue">MAD {(product.base_unit_price * (1 - getDiscountInfo(quantity).discount)).toFixed(2)}</span>
                                <span className="text-lg text-slate-gray font-bold uppercase tracking-tighter">/ {product.packaging_type}</span>
                            </div>

                            {/* Variant Selection (If Multi-Size) */}
                            {variants.length > 0 && (
                                <div className="mb-8 p-4 bg-slate-gray-light/5 rounded-2xl border border-dashed border-slate-gray-light/20">
                                    <p className="text-[10px] font-black uppercase tracking-widest text-slate-gray mb-3 pb-2 border-b border-slate-gray-light/10">Sélectionner la Taille / Variante</p>
                                    <div className="flex flex-wrap gap-2">
                                        {variants.map((v) => (
                                            <button
                                                key={v}
                                                onClick={() => setSelectedVariant(v)}
                                                className={`px-4 py-2 rounded-xl text-xs font-black transition-all ${selectedVariant === v ? 'bg-medical-blue text-white shadow-lg shadow-medical-blue/20 scale-105' : 'bg-white text-slate-gray border border-slate-gray-light/20 hover:border-medical-blue'}`}
                                            >
                                                {v}
                                            </button>
                                        ))}
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
                                        aria-label="Diminuer la quantité"
                                    >
                                        <Minus className="w-6 h-6" />
                                    </button>
                                    <span className="w-12 text-center font-black text-xl text-slate-gray-dark">{quantity}</span>
                                    <button
                                        onClick={() => setQuantity(quantity + 1)}
                                        className="w-14 h-14 flex items-center justify-center text-slate-gray hover:text-medical-blue transition-colors touch-manipulation"
                                        aria-label="Augmenter la quantité"
                                    >
                                        <Plus className="w-6 h-6" />
                                    </button>
                                </div>
                                <button
                                    onClick={addToCart}
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
                                __html: (product.description || '').replace(/<table[\s\S]*?<\/table>/gi, '')
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
                                        { label: 'Conditionnement', value: product.packaging_type },
                                        { label: 'Référence SKU', value: product.sku },
                                        { label: 'Marque', value: product.brand_entity?.name || product.brand },
                                        { label: 'Fabricant', value: product.brand_entity?.manufacturer },
                                        // Merge dynamic specs, filtering out common keys
                                        ...Object.entries(dynamicSpecs)
                                            .filter(([k]) => !['marque', 'brand', 'fabricant', 'manufacturer', 'sku', 'packaging', 'conditionnement'].includes(k.toLowerCase()))
                                            .map(([key, value]) => ({
                                                label: key.charAt(0).toUpperCase() + key.slice(1).replace(/_/g, ' '),
                                                value: Array.isArray(value) ? value.join(', ') : String(value)
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
            </main>
            <Footer />
            <BottomNav />
            <ComplianceGateModal
                isOpen={isGateOpen}
                onClose={() => setIsGateOpen(false)}
                documentType={gatedDocType}
            />
        </div>
    );
}
