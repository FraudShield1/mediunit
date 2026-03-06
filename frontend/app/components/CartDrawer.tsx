'use client';

import React, { useEffect, useState } from 'react';
import { useCartStore } from '@/app/store/useCartStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import { X, Trash2, ShoppingCart, Plus, Minus, ArrowRight } from 'lucide-react';
import Link from 'next/link';
import Image from 'next/image';

export default function CartDrawer() {
    const { items, isCartOpen, closeCart, removeItem, updateQuantity } = useCartStore();
    const { t, translateProduct } = useLanguageStore();
    const [mounted, setMounted] = useState(false);

    useEffect(() => {
        setMounted(true);
    }, []);

    // Prevent scrolling when drawer is open
    useEffect(() => {
        if (isCartOpen) {
            document.body.style.overflow = 'hidden';
        } else {
            document.body.style.overflow = '';
        }
        return () => {
            document.body.style.overflow = '';
        };
    }, [isCartOpen]);

    if (!mounted) return null;

    const getDiscountedPrice = (basePrice: number, qty: number) => {
        if (qty >= 50) return basePrice * 0.8;
        if (qty >= 10) return basePrice * 0.9;
        return basePrice;
    };

    let subtotal = 0;
    items.forEach(item => {
        const itemPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
        subtotal += (itemPrice * item.quantity);
    });

    return (
        <>
            {/* Backdrop */}
            {isCartOpen && (
                <div
                    className="fixed inset-0 bg-slate-gray-dark/40 backdrop-blur-sm z-[110] transition-opacity"
                    onClick={closeCart}
                    aria-hidden="true"
                />
            )}

            {/* Drawer */}
            <div
                className={`fixed top-0 right-0 h-[100dvh] w-full sm:w-[400px] md:w-[450px] bg-white z-[120] shadow-2xl transform transition-transform duration-300 ease-in-out flex flex-col ${isCartOpen ? 'translate-x-0' : 'translate-x-full'}`}
                role="dialog"
                aria-modal="true"
                aria-label={t('Votre Panier', 'Your Cart')}
            >
                {/* Header */}
                <div className="flex items-center justify-between p-6 border-b border-slate-gray-light/10">
                    <h2 className="text-2xl font-black text-slate-gray-dark flex items-center gap-3">
                        <ShoppingCart className="w-6 h-6 text-medical-blue" />
                        {t('Votre Panier', 'Your Cart')}
                    </h2>
                    <button
                        onClick={closeCart}
                        className="p-2 bg-slate-gray-light/10 hover:bg-slate-gray-light/20 rounded-full transition-colors text-slate-gray"
                        aria-label={t('Fermer', 'Close')}
                    >
                        <X className="w-5 h-5" />
                    </button>
                </div>

                {/* Items */}
                <div className="flex-1 overflow-y-auto p-6 space-y-6 bg-slate-50">
                    {items.length === 0 ? (
                        <div className="flex flex-col items-center justify-center h-full text-slate-gray opacity-50 space-y-4">
                            <ShoppingCart className="w-16 h-16" />
                            <p className="font-bold text-lg">{t('Votre panier est vide', 'Your cart is empty')}</p>
                        </div>
                    ) : (
                        items.map((item) => {
                            const currentPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
                            return (
                                <div key={item.id} className="bg-white p-4 rounded-2xl border border-slate-gray-light/10 shadow-sm flex gap-4">
                                    <div className="w-20 h-20 bg-slate-gray-light/5 rounded-xl flex-shrink-0 relative overflow-hidden border border-slate-gray-light/10">
                                        <Image src={item.image || '/images/Pencil Points different colours.jpeg'} alt={item.name} fill sizes="80px" className="object-cover" />
                                    </div>
                                    <div className="flex-1 flex flex-col justify-between">
                                        <div>
                                            <h3 className="text-sm font-bold text-slate-gray-dark leading-tight line-clamp-2">{translateProduct(item.name)}</h3>
                                            <p className="text-[10px] text-slate-gray uppercase mt-1">{item.sku}</p>
                                        </div>
                                        <div className="flex items-end justify-between mt-2">
                                            <div className="flex items-center gap-3 bg-slate-50 rounded-xl border border-slate-gray-light/10 p-1">
                                                <button
                                                    onClick={() => updateQuantity(item.id, -1)}
                                                    className="w-6 h-6 flex items-center justify-center rounded-lg hover:bg-white hover:shadow-sm text-slate-gray transition-all"
                                                >
                                                    <Minus className="w-3 h-3" />
                                                </button>
                                                <span className="text-xs font-black w-4 text-center">{item.quantity}</span>
                                                <button
                                                    onClick={() => updateQuantity(item.id, +1)}
                                                    className="w-6 h-6 flex items-center justify-center rounded-lg hover:bg-white hover:shadow-sm text-slate-gray transition-all"
                                                >
                                                    <Plus className="w-3 h-3" />
                                                </button>
                                            </div>
                                            <div className="text-right">
                                                <div className="text-sm font-black text-medical-blue">MAD {(currentPrice * item.quantity).toFixed(2)}</div>
                                            </div>
                                        </div>
                                    </div>
                                    <button
                                        onClick={() => removeItem(item.id)}
                                        className="self-start p-2 text-slate-gray-light hover:text-red-500 hover:bg-red-50 rounded-lg transition-colors"
                                        aria-label={t('Supprimer', 'Remove')}
                                    >
                                        <Trash2 className="w-4 h-4" />
                                    </button>
                                </div>
                            );
                        })
                    )}
                </div>

                {/* Footer / Checkout Button */}
                {items.length > 0 && (
                    <div className="p-6 bg-white border-t border-slate-gray-light/10 shadow-[0_-10px_40px_rgba(0,0,0,0.05)]">
                        <div className="flex justify-between items-center mb-6">
                            <span className="text-slate-gray font-bold">{t('Sous-total HT', 'Subtotal (Excl. Tax)')}</span>
                            <span className="text-2xl font-black text-slate-gray-dark">MAD {subtotal.toFixed(2)}</span>
                        </div>
                        <Link
                            href="/cart"
                            onClick={closeCart}
                            className="btn-primary w-full h-14 flex items-center justify-center gap-2 text-lg font-black shadow-xl shadow-medical-blue/20"
                        >
                            {t('Voir le Panier', 'View Cart')}
                            <ArrowRight className="w-5 h-5" />
                        </Link>
                    </div>
                )}
            </div>
        </>
    );
}
