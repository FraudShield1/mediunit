'use client';

import React, { useState, useEffect } from 'react';
import { ShieldCheck, Truck, CheckCircle2 } from 'lucide-react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createOrder } from '@/app/lib/api';

export default function CheckoutPage() {
    const router = useRouter();
    const [cartItems, setCartItems] = useState<any[]>([]);
    const [isSubmitting, setIsSubmitting] = useState(false);

    useEffect(() => {
        const savedCart = localStorage.getItem('mediunit_cart');
        if (savedCart) {
            setCartItems(JSON.parse(savedCart));
        } else {
            router.push('/cart');
        }
    }, [router]);

    const getDiscountedPrice = (basePrice: number, qty: number) => {
        if (qty >= 50) return basePrice * 0.8;
        if (qty >= 10) return basePrice * 0.9;
        return basePrice;
    };

    const subtotal = cartItems.reduce((acc, item) => {
        const itemPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
        return acc + (itemPrice * item.quantity);
    }, 0);

    const tax = subtotal * 0.20; // 20% VAT
    const total = subtotal + tax;

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        const token = localStorage.getItem('mediunit_token');
        if (!token) {
            router.push('/login');
            return;
        }

        setIsSubmitting(true);

        try {
            const orderData = {
                shipping_address_id: 1, // Hardcoded for demo
                items: cartItems.map(item => ({
                    product_id: item.id,
                    quantity: item.quantity
                }))
            };

            const order = await createOrder(token, orderData);
            localStorage.removeItem('mediunit_cart');
            window.dispatchEvent(new Event('cart_updated'));
            router.push(`/checkout/success?order_id=${order.id}`);
        } catch (error) {
            alert("Erreur lors de la validation de la commande.");
            setIsSubmitting(false);
        }
    };

    if (cartItems.length === 0) return null;

    return (
        <div className="min-h-screen bg-clinic-white py-12">
            <div className="max-w-4xl mx-auto px-4">
                <div className="text-center mb-12">
                    <h1 className="text-3xl font-black text-slate-gray-dark">Finalisation de la Commande</h1>
                    <p className="text-slate-gray mt-2">Veuillez renseigner vos informations de livraison.</p>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-12">
                    {/* Checkout Form */}
                    <div className="bg-white rounded-[2.5rem] p-8 shadow-xl border border-slate-gray-light/10">
                        <h2 className="text-xl font-bold text-slate-gray-dark mb-6">Informations de Livraison</h2>
                        <form onSubmit={handleSubmit} className="space-y-4">
                            <div className="grid grid-cols-2 gap-4">
                                <div className="space-y-2">
                                    <label className="text-xs font-bold text-slate-gray uppercase">Prénom</label>
                                    <input required type="text" className="w-full px-4 py-3 rounded-xl border border-slate-gray-light/30 focus:border-medical-blue focus:ring-2 focus:ring-medical-blue/20 outline-none transition-all" placeholder="Dr. Jean" />
                                </div>
                                <div className="space-y-2">
                                    <label className="text-xs font-bold text-slate-gray uppercase">Nom</label>
                                    <input required type="text" className="w-full px-4 py-3 rounded-xl border border-slate-gray-light/30 focus:border-medical-blue focus:ring-2 focus:ring-medical-blue/20 outline-none transition-all" placeholder="Dupont" />
                                </div>
                            </div>
                            <div className="space-y-2">
                                <label className="text-xs font-bold text-slate-gray uppercase">Clinique / Cabinet (Optionnel)</label>
                                <input type="text" className="w-full px-4 py-3 rounded-xl border border-slate-gray-light/30 focus:border-medical-blue focus:ring-2 focus:ring-medical-blue/20 outline-none transition-all" placeholder="Clinique des Lilas" />
                            </div>
                            <div className="space-y-2">
                                <label className="text-xs font-bold text-slate-gray uppercase">Téléphone</label>
                                <input required type="tel" className="w-full px-4 py-3 rounded-xl border border-slate-gray-light/30 focus:border-medical-blue focus:ring-2 focus:ring-medical-blue/20 outline-none transition-all" placeholder="+212 600 000 000" />
                            </div>
                            <div className="space-y-2">
                                <label className="text-xs font-bold text-slate-gray uppercase">Adresse Complète</label>
                                <textarea required rows={3} className="w-full px-4 py-3 rounded-xl border border-slate-gray-light/30 focus:border-medical-blue focus:ring-2 focus:ring-medical-blue/20 outline-none transition-all" placeholder="123 Avenue Mohamed V..."></textarea>
                            </div>
                            <div className="space-y-2">
                                <label className="text-xs font-bold text-slate-gray uppercase">Ville</label>
                                <input required type="text" className="w-full px-4 py-3 rounded-xl border border-slate-gray-light/30 focus:border-medical-blue focus:ring-2 focus:ring-medical-blue/20 outline-none transition-all" placeholder="Casablanca" />
                            </div>
                            <div className="mt-8">
                                <div className="bg-sage-green/10 border border-sage-green/30 rounded-2xl p-4 flex items-start gap-4 mb-6">
                                    <CheckCircle2 className="w-6 h-6 text-sage-green mt-1 flex-shrink-0" />
                                    <div>
                                        <h4 className="font-bold text-sage-green-dark">Paiement à la Livraison (Cash on Delivery)</h4>
                                        <p className="text-sm text-sage-green-dark/80 mt-1">Vous paierez votre commande directement au livreur lors de la réception.</p>
                                    </div>
                                </div>

                                <button disabled={isSubmitting} type="submit" className={`w-full btn-primary h-14 text-lg ${isSubmitting ? 'opacity-70 cursor-wait' : ''}`}>
                                    {isSubmitting ? 'Traitement en cours...' : 'Confirmer la Commande'}
                                </button>
                            </div>
                        </form>
                    </div>

                    {/* Order Summary */}
                    <div className="space-y-6">
                        <div className="bg-white rounded-[2.5rem] p-8 shadow-2xl shadow-medical-blue/5 border border-slate-gray-light/10">
                            <h2 className="text-xl font-bold text-slate-gray-dark mb-6">Résumé ({cartItems.length} article{cartItems.length > 1 ? 's' : ''})</h2>

                            <div className="space-y-4 mb-8 max-h-[40vh] overflow-y-auto pr-2">
                                {cartItems.map(item => {
                                    const itemPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
                                    return (
                                        <div key={item.id} className="flex gap-4 items-center">
                                            <div className="w-16 h-16 bg-slate-gray-light/5 rounded-xl overflow-hidden flex-shrink-0">
                                                <img src={item.image} alt={item.name} className="w-full h-full object-cover" />
                                            </div>
                                            <div className="flex-1">
                                                <h4 className="text-sm font-bold text-slate-gray-dark line-clamp-1">{item.name}</h4>
                                                <div className="flex justify-between mt-1">
                                                    <span className="text-xs text-slate-gray">Qté: {item.quantity}</span>
                                                    <span className="text-sm font-bold text-medical-blue">MAD {(itemPrice * item.quantity).toFixed(2)}</span>
                                                </div>
                                            </div>
                                        </div>
                                    )
                                })}
                            </div>

                            <div className="space-y-3 pt-6 border-t border-slate-gray-light/10">
                                <div className="flex justify-between text-sm">
                                    <span className="text-slate-gray">Sous-total</span>
                                    <span className="font-bold text-slate-gray-dark">MAD {subtotal.toFixed(2)}</span>
                                </div>
                                <div className="flex justify-between text-sm">
                                    <span className="text-slate-gray">Livraison</span>
                                    <span className="font-bold text-sage-green">Gratuite</span>
                                </div>
                                <div className="flex justify-between text-sm">
                                    <span className="text-slate-gray">TVA (20%)</span>
                                    <span className="font-bold text-slate-gray-dark">MAD {tax.toFixed(2)}</span>
                                </div>
                                <div className="pt-4 mt-4 border-t border-slate-gray-light/10 flex justify-between items-center">
                                    <span className="text-lg font-black text-slate-gray-dark">Total à payer</span>
                                    <span className="text-2xl font-black text-medical-blue">MAD {total.toFixed(2)}</span>
                                </div>
                            </div>
                        </div>

                        <div className="flex items-center justify-center gap-6 text-[10px] font-black uppercase tracking-widest text-slate-gray-light">
                            <span className="flex items-center gap-1"><ShieldCheck className="w-3 h-3" /> Achat Sécurisé B2B</span>
                            <span className="flex items-center gap-1"><Truck className="w-3 h-3" /> Livraison express 24h</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

