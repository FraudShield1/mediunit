'use client';

import React from 'react';
import { ShoppingCart, ArrowLeft, Trash2, Plus, Minus, ShieldCheck, Truck } from 'lucide-react';
import Link from 'next/link';
import Image from 'next/image';
import { useCartStore } from '@/app/store/useCartStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import EmptyState from '../components/EmptyState';

const MIN_ORDER_MAD = 300;
const FREE_DELIVERY_THRESHOLD = 1500;
const DELIVERY_FEE_MAD = 50;

export default function CartPage() {
    const { language, t } = useLanguageStore();
    const { items, removeItem, updateQuantity } = useCartStore();

    const getDiscountedPrice = (basePrice: number, qty: number) => {
        if (qty >= 50) return basePrice * 0.8;
        if (qty >= 10) return basePrice * 0.9;
        return basePrice;
    };

    const itemCount = items.reduce((acc, item) => acc + item.quantity, 0);

    const baseSubtotal = items.reduce((acc, item) => {
        const itemPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
        return acc + (itemPrice * item.quantity);
    }, 0);

    // Apply bulk discount at cart level (matching checkout logic)
    let discountedSubtotal = baseSubtotal;
    if (itemCount >= 50) discountedSubtotal = baseSubtotal * 0.8;
    else if (itemCount >= 10) discountedSubtotal = baseSubtotal * 0.9;
    const subtotal = discountedSubtotal;

    const deliveryFee = subtotal >= FREE_DELIVERY_THRESHOLD ? 0 : (items.length > 0 ? DELIVERY_FEE_MAD : 0);
    const tax = subtotal * 0.20; // 20% VAT on discounted subtotal
    const total = subtotal + tax + deliveryFee;
    const needsMoreForMin = Math.max(0, MIN_ORDER_MAD - subtotal);
    const needsMoreForFreeDelivery = Math.max(0, FREE_DELIVERY_THRESHOLD - subtotal);
    const freeDeliveryProgress = Math.min(100, (subtotal / FREE_DELIVERY_THRESHOLD) * 100);

    return (
        <div className="min-h-screen bg-clinic-white pb-24">
            <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/20">
                <div className="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between">
                    <Link href="/" className="p-2 -ml-2 text-slate-gray hover:text-medical-blue transition-colors">
                        <ArrowLeft className="w-6 h-6" />
                    </Link>
                    <h1 className="text-xl font-bold text-slate-gray-dark">{t('Récapitulatif de Commande', 'Order Summary')}</h1>
                    <div className="w-10"></div>
                </div>
            </header>

            <main className="max-w-7xl mx-auto px-4 py-8 md:py-12">
                <div className="grid grid-cols-1 lg:grid-cols-3 gap-12">
                    {/* Cart Items */}
                    <div className="lg:col-span-2 space-y-6">
                        {items.length > 0 ? (
                            items.map((item) => (
                                <div key={item.id} className="bg-white rounded-3xl p-6 shadow-xl shadow-medical-blue/5 border border-slate-gray-light/10 flex flex-col md:flex-row gap-6 items-center">
                                    <div className="w-24 h-24 bg-slate-gray-light/5 rounded-2xl overflow-hidden flex-shrink-0 relative">
                                        <Image src={item.image} alt={item.name} fill className="object-cover" />
                                    </div>
                                    <div className="flex-1 text-center md:text-left">
                                        <h3 className="font-bold text-slate-gray-dark leading-tight mb-1">{item.name}</h3>
                                        <p className="text-xs text-slate-gray font-mono uppercase tracking-widest">RÉF: {item.sku}</p>
                                    </div>
                                    <div className="flex flex-col items-center gap-4">
                                        <div className="flex items-center bg-clinic-white rounded-xl border border-slate-gray-light/10 p-1">
                                            <button onClick={() => updateQuantity(item.id, -1)} className="w-8 h-8 flex items-center justify-center text-slate-gray hover:text-medical-blue"><Minus className="w-4 h-4" /></button>
                                            <span className="w-8 text-center font-bold text-slate-gray-dark">{item.quantity}</span>
                                            <button onClick={() => updateQuantity(item.id, 1)} className="w-8 h-8 flex items-center justify-center text-slate-gray hover:text-medical-blue"><Plus className="w-4 h-4" /></button>
                                        </div>
                                        <button onClick={() => removeItem(item.id)} className="text-xs font-bold text-red-500 hover:text-red-600 flex items-center gap-1">
                                            <Trash2 className="w-3 h-3" /> {t('Supprimer', 'Remove')}
                                        </button>
                                    </div>
                                    <div className="text-right min-w-[100px]">
                                        <p className="text-xs text-slate-gray font-bold uppercase tracking-tighter">{t('Total Ligne', 'Line Total')}</p>
                                        <span className="text-xl font-black text-medical-blue">
                                            MAD {((item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price) * item.quantity).toFixed(2)}
                                        </span>
                                    </div>
                                </div>
                            ))
                        ) : (
                            <EmptyState
                                icon={ShoppingCart}
                                title={t('Votre panier est vide', 'Your cart is empty')}
                                description={t('Découvrez notre catalogue de consommables médicaux et de kits chirurgicaux pour votre clinique.', 'Discover our catalog of medical consumables and surgical kits for your clinic.')}
                                actionLabel={t('Parcourir le Catalogue', 'Browse Catalog')}
                                actionHref="/"
                            />
                        )}
                    </div>

                    {/* Summary Section */}
                    <div className="space-y-6">
                        <div className="bg-white rounded-[2.5rem] p-8 shadow-2xl shadow-medical-blue/10 border border-medical-blue/10">
                            {/* Free Delivery Upsell */}
                            <div className="mb-8">
                                <div className="flex justify-between items-end mb-2">
                                    <span className="text-xs font-black uppercase tracking-widest text-medical-blue">{t('Livraison Gratuite', 'Free Delivery')}</span>
                                    <span className="text-xs font-bold text-slate-gray-dark">{subtotal >= FREE_DELIVERY_THRESHOLD ? t('OFFERTE', 'FREE') : `${t('MAD', 'MAD')} ${needsMoreForFreeDelivery.toFixed(2)} ${t('restants', 'remaining')}`}</span>
                                </div>
                                <div className="h-2 w-full bg-slate-gray-light/10 rounded-full overflow-hidden">
                                    <div
                                        className="h-full bg-medical-blue transition-all duration-1000"
                                        style={{ width: `${freeDeliveryProgress}%` }}
                                    ></div>
                                </div>
                            </div>

                            <h2 className="text-2xl font-black text-slate-gray-dark mb-8 tracking-tight">{t('Récapitulatif de Commande', 'Order Summary')}</h2>
                            <div className="space-y-4 mb-8">
                                <div className="flex justify-between items-center">
                                    <span className="text-slate-gray font-medium">{t('Sous-total HT', 'Subtotal (Excl. Tax)')}</span>
                                    <span className="font-bold text-slate-gray-dark">MAD {subtotal.toFixed(2)}</span>
                                </div>
                                <div className="flex justify-between items-center text-sm mb-2">
                                    <span className="text-slate-gray">{t('TVA (20%)', 'VAT (20%)')}</span>
                                    <span className="font-bold text-slate-gray-dark">MAD {tax.toFixed(2)}</span>
                                </div>
                                <div className="flex justify-between items-center text-sm">
                                    <span className="text-slate-gray">{t('Frais de Livraison', 'Delivery Fee')}</span>
                                    <span className="font-bold text-slate-gray-dark">{deliveryFee > 0 ? `MAD ${deliveryFee.toFixed(2)}` : t('GRATUIT', 'FREE')}</span>
                                </div>
                                <div className="pt-4 border-t border-slate-gray-light/10 flex justify-between items-center">
                                    <span className="text-xl font-black text-slate-gray-dark">{t('TOTAL TTC', 'TOTAL (Incl. Tax)')}</span>
                                    <span className="text-3xl font-black text-medical-blue">MAD {total.toFixed(2)}</span>
                                </div>
                            </div>

                            {items.length > 0 && subtotal < MIN_ORDER_MAD ? (
                                <div className="bg-red-50 p-4 rounded-2xl border border-red-100 mb-6">
                                    <p className="text-xs text-red-600 font-bold leading-relaxed">
                                        ⚠️ {t(`Commande minimum de 300 MAD requise pour la logistique clinique. Veuillez ajouter MAD ${needsMoreForMin.toFixed(2)} d'articles.`, `Minimum order of 300 MAD required for clinical logistics. Please add MAD ${needsMoreForMin.toFixed(2)} of items.`)}
                                    </p>
                                </div>
                            ) : null}

                            <Link
                                href={items.length > 0 && subtotal >= MIN_ORDER_MAD ? "/checkout" : "#"}
                                className={`btn-primary w-full h-16 text-lg ${items.length === 0 || subtotal < MIN_ORDER_MAD ? 'opacity-50 cursor-not-allowed grayscale' : ''}`}
                                onClick={(e) => (items.length === 0 || subtotal < MIN_ORDER_MAD) && e.preventDefault()}
                            >
                                <span>{items.length === 0 ? t('Panier Vide', 'Empty Cart') : (subtotal >= MIN_ORDER_MAD ? t('Confirmer la Commande', 'Confirm Order') : t('Minimum Non Atteint', 'Minimum Not Met'))}</span>
                            </Link>

                            <div className="mt-8 flex items-center justify-center gap-4 text-[10px] font-black uppercase tracking-widest text-slate-gray-light">
                                <span className="flex items-center gap-1"><ShieldCheck className="w-3 h-3" /> {t('Paiement Sécurisé', 'Secure Payment')}</span>
                                <span className="flex items-center gap-1"><Truck className="w-3 h-3" /> {t('Livraison Prioritaire', 'Priority Delivery')}</span>
                            </div>
                        </div>

                        {/* Order Help */}
                        <div className="bg-clinic-white rounded-3xl p-6 border border-slate-gray-light/10">
                            <h4 className="font-bold text-slate-gray-dark mb-2">{t("Besoin d'Assistance ?", "Need Assistance?")}</h4>
                            <p className="text-xs text-slate-gray leading-relaxed mb-4">{t("Notre équipe B2B est prête à vous aider pour les licences en volume et documents d'achat.", "Our B2B team is ready to help you with volume licenses and purchasing documents.")}</p>
                            <a href={`https://wa.me/212661364375?text=${encodeURIComponent(t(`*Bonjour MediUnit Assistance* 👋\n\nJe vous contacte au sujet de ma commande en cours.\n\n📦 *Mon Panier Actuel :*\n${items.map(item => `▪ ${item.name} *(x${item.quantity})*`).join('\n')}\n\n💰 *Total estimé TTC:* MAD ${total.toFixed(2)}\n\nJ'ai besoin d'une assistance pour : `, `*Hello MediUnit Support* 👋\n\nI am contacting you regarding my current order.\n\n📦 *My Current Cart :*\n${items.map(item => `▪ ${item.name} *(x${item.quantity})*`).join('\n')}\n\n💰 *Estimated total incl. VAT:* MAD ${total.toFixed(2)}\n\nI need assistance with: `))}`} target="_blank" rel="noopener noreferrer" className="flex items-center justify-center w-full h-12 rounded-2xl bg-white border border-slate-gray-light/20 text-medical-blue text-sm font-bold hover:bg-medical-blue-light/10 transition-colors">
                                {t('Contacter un Agent', 'Contact an Agent')}
                            </a>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    );
}
