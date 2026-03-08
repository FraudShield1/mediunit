'use client';

import React, { useState, useEffect } from 'react';
import { ShieldCheck, Truck, CheckCircle2, ArrowRight, CreditCard, Clock } from 'lucide-react';
import Link from 'next/link';
import Image from 'next/image';
import { useRouter } from 'next/navigation';
import { createOrder } from '@/app/lib/api';
import { toast } from 'react-hot-toast';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import { useCartStore } from '@/app/store/useCartStore';

const FREE_DELIVERY_THRESHOLD = 1500;
const DELIVERY_FEE_MAD = 50;

export default function CheckoutPage() {
    const router = useRouter();
    const { t } = useLanguageStore();
    const { items: storeItems, clearCart } = useCartStore();
    const [cartItems, setCartItems] = useState<any[]>([]);
    const [isSubmitting, setIsSubmitting] = useState(false);

    useEffect(() => {
        if (storeItems.length === 0) {
            router.push('/cart');
        } else {
            setCartItems(storeItems);
        }
    }, []);

    const getDiscountedPrice = (basePrice: number, qty: number) => {
        if (qty >= 50) return basePrice * 0.8;
        if (qty >= 10) return basePrice * 0.9;
        return basePrice;
    };

    const itemCount = cartItems.reduce((acc, item) => acc + item.quantity, 0);

    const subtotal = cartItems.reduce((acc, item) => {
        const itemPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
        return acc + (itemPrice * item.quantity);
    }, 0);

    const deliveryFee = subtotal >= FREE_DELIVERY_THRESHOLD ? 0 : (cartItems.length > 0 ? DELIVERY_FEE_MAD : 0);
    const tax = subtotal * 0.20; // 20% VAT
    const total = subtotal + tax + deliveryFee;

    const [formData, setFormData] = useState({
        first_name: '',
        last_name: '',
        clinic_name: '',
        phone: '',
        address: '',
        city: '',
        zip_code: '',
        email: ''
    });

    const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
        setFormData({ ...formData, [e.target.name]: e.target.value });
    };

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        setIsSubmitting(true);

        try {
            const orderData = {
                items: cartItems.map(item => ({
                    product_id: String(item.productId),
                    quantity: item.quantity
                })),
                shipping_details: {
                    first_name: formData.first_name,
                    last_name: formData.last_name,
                    phone: formData.phone,
                    address: formData.address,
                    city: formData.city,
                    zip_code: formData.zip_code,
                    email: formData.email,
                    clinic_name: formData.clinic_name || undefined
                }
            };

            const order = await createOrder(orderData);
            clearCart();
            router.push(`/checkout/success?order_id=${order.id}`);
        } catch (error) {
            toast.error(t("Erreur lors de la validation de la commande. Veuillez vérifier vos informations.", "Error validating order. Please check your information."));
            setIsSubmitting(false);
        }
    };

    if (cartItems.length === 0) return (
        <div className="min-h-screen flex items-center justify-center">
            <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-medical-blue"></div>
        </div>
    );

    return (
        <div className="min-h-screen bg-clinic-white py-12 px-4 md:py-20">
            <div className="max-w-6xl mx-auto">
                <div className="flex flex-col md:flex-row md:items-end justify-between gap-8 mb-12">
                    <div>
                        <h1 className="text-4xl md:text-5xl font-black text-slate-gray-dark tracking-tight mb-2">{t('Finalisation', 'Checkout')}</h1>
                        <p className="text-slate-gray text-lg font-medium">{t('Validation de votre commande professionnelle MediUnit.', 'Validation of your professional MediUnit order.')}</p>
                    </div>
                    {/* B2B Premium Progress Indicator */}
                    <div className="flex items-center">
                        <div className="flex items-center gap-3">
                            <span className="flex items-center justify-center w-8 h-8 rounded-full bg-medical-blue text-white font-black text-sm shadow-md shadow-medical-blue/20">
                                <CheckCircle2 className="w-5 h-5" />
                            </span>
                            <span className="text-sm font-black text-slate-gray-dark hidden md:block">{t('Panier', 'Cart')}</span>
                        </div>
                        <div className="w-8 md:w-16 h-1 bg-medical-blue/20 rounded-full mx-3 relative">
                            <div className="absolute inset-0 bg-medical-blue rounded-full w-full"></div>
                        </div>
                        <div className="flex items-center gap-3">
                            <span className="flex items-center justify-center w-8 h-8 rounded-full bg-medical-blue text-white font-black text-sm shadow-md shadow-medical-blue/20 ring-4 ring-medical-blue/10">
                                2
                            </span>
                            <span className="text-sm font-black text-medical-blue hidden md:block">{t('Informations', 'Details')}</span>
                        </div>
                        <div className="w-8 md:w-16 h-1 bg-slate-gray-light/20 rounded-full mx-3"></div>
                        <div className="flex items-center gap-3 opacity-50">
                            <span className="flex items-center justify-center w-8 h-8 rounded-full bg-clinic-white border-2 border-slate-gray-light/20 text-slate-gray font-black text-sm">
                                3
                            </span>
                            <span className="text-sm font-bold text-slate-gray hidden md:block">{t('Confirmation', 'Confirmation')}</span>
                        </div>
                    </div>
                </div>

                <div className="grid grid-cols-1 lg:grid-cols-3 gap-12">
                    {/* Checkout Form */}
                    <div className="lg:col-span-2 space-y-8">
                        <div className="bg-white rounded-[3rem] p-8 md:p-12 shadow-2xl shadow-medical-blue/5 border border-slate-gray-light/10">
                            <h2 className="text-2xl font-black text-slate-gray-dark mb-10 flex items-center gap-4">
                                <div className="w-12 h-12 bg-medical-blue/10 rounded-2xl flex items-center justify-center">
                                    <Truck className="w-6 h-6 text-medical-blue" />
                                </div>
                                {t('Coordonnées de Livraison', 'Shipping Details')}
                            </h2>

                            <form onSubmit={handleSubmit} className="space-y-8">
                                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                                    <div className="space-y-3">
                                        <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Prénom', 'First Name')}</label>
                                        <input required name="first_name" value={formData.first_name} onChange={handleChange} type="text" className="w-full h-16 px-6 rounded-2xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark" placeholder="Dr. Jean" />
                                    </div>
                                    <div className="space-y-3">
                                        <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Nom de famille', 'Last Name')}</label>
                                        <input required name="last_name" value={formData.last_name} onChange={handleChange} type="text" className="w-full h-16 px-6 rounded-2xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark" placeholder="Dupont" />
                                    </div>
                                </div>

                                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                                    <div className="space-y-3">
                                        <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Clinique / Cabinet (Optionnel)', 'Clinic / Practice (Optional)')}</label>
                                        <input name="clinic_name" value={formData.clinic_name} onChange={handleChange} type="text" className="w-full h-16 px-6 rounded-2xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark" placeholder="Clinique de l'Espoir" />
                                    </div>
                                    <div className="space-y-3">
                                        <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Téléphone Direct', 'Direct Phone')}</label>
                                        <input required name="phone" value={formData.phone} onChange={handleChange} type="tel" className="w-full h-16 px-6 rounded-2xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark" placeholder="+212 600 000 000" />
                                    </div>
                                </div>

                                <div className="space-y-3">
                                    <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Adresse E-mail Professionnelle', 'Professional Email Address')}</label>
                                    <input required name="email" value={formData.email} onChange={handleChange} type="email" className="w-full h-16 px-6 rounded-2xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark" placeholder="contact@clinique.ma" />
                                    <p className="text-[10px] text-slate-gray font-medium pl-1">{t('Utilisée pour l\'envoi de votre confirmation et facture.', 'Used for sending your confirmation and invoice.')}</p>
                                </div>

                                <div className="space-y-3">
                                    <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Adresse de Livraison', 'Shipping Address')}</label>
                                    <textarea required name="address" value={formData.address} onChange={handleChange} rows={3} className="w-full p-6 rounded-3xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark resize-none" placeholder={t('Numéro, rue, bâtiment, étage...', 'Number, street, building, floor...')}></textarea>
                                </div>

                                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                                    <div className="space-y-3">
                                        <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Ville', 'City')}</label>
                                        <input required name="city" value={formData.city} onChange={handleChange} type="text" className="w-full h-16 px-6 rounded-2xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark" placeholder="Casablanca" />
                                    </div>
                                    <div className="space-y-3">
                                        <label className="text-xs font-black text-slate-gray uppercase tracking-widest pl-1">{t('Code Postal', 'Postal Code')}</label>
                                        <input required name="zip_code" value={formData.zip_code} onChange={handleChange} type="text" className="w-full h-16 px-6 rounded-2xl bg-clinic-white border-2 border-transparent focus:border-medical-blue/20 focus:bg-white focus:ring-4 focus:ring-medical-blue/5 outline-none transition-all font-bold text-slate-gray-dark" placeholder="20000" />
                                    </div>
                                </div>

                                <div className="pt-10">
                                    <div className="bg-sage-green/5 border border-sage-green/20 rounded-[2rem] p-8 mb-10">
                                        <div className="flex items-center gap-4 mb-4">
                                            <div className="w-10 h-10 bg-sage-green rounded-xl flex items-center justify-center text-white">
                                                <CreditCard className="w-5 h-5" />
                                            </div>
                                            <h4 className="font-black text-slate-gray-dark uppercase tracking-tight">{t('Paiement à la Livraison', 'Cash on Delivery')}</h4>
                                        </div>
                                        <p className="text-slate-gray font-medium leading-relaxed">
                                            {t('Modalité B2B sécurisée. Réglez votre commande par ', 'Secure B2B payment. Pay for your order by ')}<strong>{t('chèque barré', 'crossed check')}</strong>{t(' au nom de MediUnit ou en ', ' to the name of MediUnit or in ')}<strong>{t('espèces', 'cash')}</strong>{t(' lors de la remise en main propre par notre transporteur.', ' upon delivery by our carrier.')}
                                        </p>
                                    </div>

                                    <button
                                        disabled={isSubmitting}
                                        type="submit"
                                        className={`w-full h-20 rounded-[2rem] bg-medical-blue text-white text-xl font-black shadow-2xl shadow-medical-blue/30 flex items-center justify-center gap-3 group transition-all hover:scale-[1.02] active:scale-[0.98] ${isSubmitting ? 'opacity-70 cursor-wait' : ''}`}
                                    >
                                        {isSubmitting ? (
                                            <>
                                                <Clock className="w-6 h-6 animate-spin" />
                                                {t('Traitement...', 'Processing...')}
                                            </>
                                        ) : (
                                            <>
                                                {t('Confirmer la Commande', 'Confirm Order')}
                                                <ArrowRight className="w-6 h-6 group-hover:translate-x-1 transition-transform" />
                                            </>
                                        )}
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                    {/* Order Summary */}
                    <div className="space-y-8">
                        <div className="bg-white rounded-[3rem] p-8 md:p-10 shadow-2xl shadow-medical-blue/5 border border-slate-gray-light/10 sticky top-12">
                            <h2 className="text-2xl font-black text-slate-gray-dark mb-8">{t('Votre Panier', 'Your Cart')}</h2>

                            <div className="space-y-6 mb-10 max-h-[45vh] overflow-y-auto pr-2 custom-scrollbar">
                                {cartItems.map(item => {
                                    const itemPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
                                    return (
                                        <div key={item.id} className="flex gap-4 items-center group">
                                            <div className="w-20 h-20 bg-clinic-white rounded-2xl overflow-hidden flex-shrink-0 relative border border-slate-gray-light/5 group-hover:border-medical-blue/20 transition-colors">
                                                <Image src={item.image} alt={item.name} fill className="object-cover" />
                                            </div>
                                            <div className="flex-1">
                                                <h4 className="text-sm font-black text-slate-gray-dark line-clamp-1 group-hover:text-medical-blue transition-colors">{item.name}</h4>
                                                <div className="flex justify-between items-center mt-2">
                                                    <span className="px-2 py-1 bg-medical-blue/5 text-medical-blue text-[10px] font-black rounded-md uppercase">{t('Qté:', 'Qty:')} {item.quantity}</span>
                                                    <span className="font-bold text-slate-gray-dark">MAD {(itemPrice * item.quantity).toFixed(2)}</span>
                                                </div>
                                            </div>
                                        </div>
                                    )
                                })}
                            </div>

                            <div className="space-y-4 pt-8 border-t border-slate-gray-light/10">
                                <div className="flex justify-between text-sm">
                                    <span className="text-slate-gray font-bold uppercase tracking-widest text-[10px]">{t('Sous-total', 'Subtotal')}</span>
                                    <span className="font-bold text-slate-gray-dark">MAD {subtotal.toFixed(2)}</span>
                                </div>
                                <div className="flex justify-between text-sm">
                                    <span className="text-slate-gray font-bold uppercase tracking-widest text-[10px]">{t('Frais de Livraison', 'Delivery Fee')}</span>
                                </div>
                                <div className="flex justify-between text-sm">
                                    <span className="text-slate-gray font-bold uppercase tracking-widest text-[10px]">{t('Expédition Express', 'Express Shipping')}</span>
                                    <span className="font-black text-sage-green">{deliveryFee > 0 ? `MAD ${deliveryFee.toFixed(2)}` : t('OFFERT', 'FREE')}</span>
                                </div>
                                <div className="flex justify-between text-sm">
                                    <span className="text-slate-gray font-bold uppercase tracking-widest text-[10px]">{t('TVA (20%)', 'VAT (20%)')}</span>
                                    <span className="font-bold text-slate-gray-dark">MAD {tax.toFixed(2)}</span>
                                </div>
                                <div className="pt-8 mt-4 border-t-2 border-slate-gray-light/10 flex justify-between items-center">
                                    <span className="text-xl font-black text-slate-gray-dark uppercase tracking-tighter">{t('Total TTC', 'Total incl. VAT')}</span>
                                    <span className="text-3xl font-black text-medical-blue">MAD {total.toFixed(2)}</span>
                                </div>
                            </div>

                            <div className="mt-10 pt-8 border-t border-slate-gray-light/5 flex flex-col items-center gap-4 text-[10px] font-black uppercase tracking-widest text-slate-gray-light">
                                <div className="flex items-center gap-6">
                                    <span className="flex items-center gap-1.5"><ShieldCheck className="w-4 h-4 text-medical-blue" /> {t('Garanti MediUnit', 'MediUnit Guaranteed')}</span>
                                    <span className="flex items-center gap-1.5"><Truck className="w-4 h-4 text-medical-blue" /> {t('Express 24-48h', 'Express 24-48h')}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    );
}
