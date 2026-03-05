'use client';

import React from 'react';
import { MessageSquare, ExternalLink, HelpCircle } from 'lucide-react';
import { useAuthStore } from '@/app/store/useAuthStore';
import { useCartStore } from '@/app/store/useCartStore';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface SupportSectionProps {
    productContext?: string;
}

export default function SupportSection({ productContext }: SupportSectionProps) {
    const { userName, clinicName } = useAuthStore();
    const { items } = useCartStore();
    const { t } = useLanguageStore();

    const generateWhatsAppLink = () => {
        const phone = '212661364375';
        let message = t(`*Bonjour MediUnit Assistance* 👋\n\n`, `*Hello MediUnit Support* 👋\n\n`);

        // User Context
        if (userName) {
            message += t(`Je suis *${userName}*${clinicName ? ` (${clinicName})` : ''}.\n\n`, `I am *${userName}*${clinicName ? ` (${clinicName})` : ''}.\n\n`);
        }

        // Page/Product Context
        if (productContext) {
            message += t(`Je vous contacte au sujet de l'article suivant :\n👉 *${productContext}*\n\n`, `I am contacting you regarding the following item:\n👉 *${productContext}*\n\n`);
        }

        // Cart Context
        if (items.length > 0) {
            const getDiscountedPrice = (basePrice: number, qty: number) => {
                if (qty >= 50) return basePrice * 0.8;
                if (qty >= 10) return basePrice * 0.9;
                return basePrice;
            };

            let subtotal = 0;
            message += t(`📦 *Mon Panier Actuel :*\n`, `📦 *My Current Cart :*\n`);

            items.forEach(item => {
                const itemPrice = item.basePrice ? getDiscountedPrice(item.basePrice, item.quantity) : item.price;
                subtotal += (itemPrice * item.quantity);
                message += `▪ ${item.name} *(x${item.quantity})*\n`;
            });

            const tax = subtotal * 0.20;
            const total = subtotal + tax;

            message += t(`\n💰 *Total estimé TTC:* MAD ${total.toFixed(2)}\n\n`, `\n💰 *Estimated total incl. VAT:* MAD ${total.toFixed(2)}\n\n`);
        }

        message += t(`J'ai besoin d'une assistance pour : `, `I need assistance with : `);

        const encodedMessage = encodeURIComponent(message);
        return `https://wa.me/${phone}?text=${encodedMessage}`;
    };

    return (
        <section className="my-16 bg-white rounded-[3rem] p-8 md:p-16 border border-slate-gray-light/10 shadow-xl shadow-medical-blue/5 relative overflow-hidden group">
            <div className="absolute top-0 right-0 w-64 h-64 bg-medical-blue/5 rounded-full -mr-32 -mt-32 transition-transform group-hover:scale-110" />

            <div className="max-w-3xl mx-auto text-center relative z-10">
                <div className="w-16 h-16 bg-medical-blue/10 rounded-2xl flex items-center justify-center mx-auto mb-8">
                    <HelpCircle className="w-8 h-8 text-medical-blue" />
                </div>

                <h2 className="text-3xl font-black text-slate-gray-dark tracking-tight uppercase mb-4">
                    {t('Besoin d\'Assistance ?', 'Need Assistance?')}
                </h2>

                <p className="text-slate-gray font-medium text-lg leading-relaxed mb-10">
                    {t('Notre équipe B2B est prête à vous aider pour les licences en volume, les documents d\'achat ou toute question technique.', 'Our B2B team is ready to help you with volume licensing, purchasing documents, or any technical questions.')}
                </p>

                <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
                    <a
                        href={generateWhatsAppLink()}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="btn-primary w-full sm:w-auto h-16 px-10 text-lg shadow-xl shadow-medical-blue/20 flex items-center justify-center gap-3 active:scale-95"
                    >
                        <MessageSquare className="w-6 h-6" />
                        <span>{t('Contacter un Agent', 'Contact an Agent')}</span>
                        <ExternalLink className="w-4 h-4 opacity-50" />
                    </a>
                </div>

                <p className="mt-8 text-[10px] font-black text-slate-gray uppercase tracking-[0.3em] opacity-40">
                    {t('Support disponible du Lundi au Vendredi • 09:00 - 18:00', 'Support available Monday to Friday • 09:00 AM - 06:00 PM')}
                </p>
            </div>
        </section>
    );
}
