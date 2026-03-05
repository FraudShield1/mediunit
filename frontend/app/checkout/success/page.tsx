'use client';

import React from 'react';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';
import { CheckCircle2, ArrowRight, Download, FileText, Loader2 } from 'lucide-react';
import { fetchOrderInvoice } from '@/app/lib/api';
import { generateOrderInvoicePDF } from '@/app/lib/invoice';
import { toast } from 'react-hot-toast';
import { useLanguageStore } from '@/app/store/useLanguageStore';

function SuccessContent() {
    const searchParams = useSearchParams();
    const orderId = searchParams.get('order_id');
    const { t } = useLanguageStore();

    const handleDownloadInvoice = async () => {
        if (!orderId) return;
        const token = localStorage.getItem('mediunit_token');
        if (!token) return;
        try {
            const orderData = await fetchOrderInvoice(orderId);
            generateOrderInvoicePDF(orderData);
        } catch (error) {
            console.error(error);
            toast.error(t("Erreur lors du téléchargement de la facture : ", "Error downloading invoice: ") + error);
        }
    };

    return (
        <div className="min-h-screen bg-clinic-white flex items-center justify-center py-12 px-4">
            <div className="bg-white rounded-[3rem] p-10 md:p-16 shadow-2xl shadow-medical-blue/10 border border-medical-blue/10 max-w-2xl w-full text-center">
                <div className="w-24 h-24 bg-sage-green/10 rounded-full flex items-center justify-center mx-auto mb-8">
                    <CheckCircle2 className="w-12 h-12 text-sage-green" />
                </div>

                <h1 className="text-3xl md:text-5xl font-black text-slate-gray-dark mb-4 leading-tight">{t('Commande Confirmée !', 'Order Confirmed!')}</h1>

                <p className="text-lg text-slate-gray mb-8">
                    {t('Merci pour votre confiance. Votre commande professionnelle a bien été enregistrée et sera traitée en priorité par notre équipe logistique B2B.', 'Thank you for your trust. Your professional order has been successfully registered and will be processed with priority by our B2B logistics team.')}
                </p>

                {orderId && (
                    <div className="bg-medical-blue/5 rounded-2xl p-6 border border-medical-blue/10 mb-8 flex items-center justify-between text-left">
                        <div>
                            <p className="text-[10px] font-black uppercase tracking-widest text-medical-blue">{t('Référence Commande', 'Order Reference')}</p>
                            <p className="font-mono text-medical-blue-dark font-bold">#{orderId.slice(0, 8)}</p>
                        </div>
                        <button
                            onClick={handleDownloadInvoice}
                            className="bg-white p-3 rounded-xl border border-medical-blue/20 text-medical-blue hover:bg-medical-blue hover:text-white transition-all flex items-center gap-2 font-bold text-sm shadow-sm"
                        >
                            <Download className="w-4 h-4" /> {t('Facture PDF', 'PDF Invoice')}
                        </button>
                    </div>
                )}

                <div className="bg-clinic-white rounded-2xl p-6 border border-slate-gray-light/10 inline-block mb-10 text-left w-full">
                    <p className="text-sm text-slate-gray font-bold uppercase tracking-widest mb-2">{t('Informations de Livraison', 'Shipping Information')}</p>
                    <p className="text-slate-gray-dark font-medium">{t('Paiement :', 'Payment :')} <span className="text-medical-blue font-bold">{t('À la livraison (Cash on Delivery)', 'Cash on Delivery')}</span></p>
                    <p className="text-slate-gray-dark font-medium mt-1">{t('Délai estimé :', 'Estimated Date :')} <span className="text-medical-blue font-bold">{t('24 à 48 heures ouvrées', '24 to 48 business hours')}</span></p>
                </div>

                <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
                    <Link href="/dashboard" className="h-14 px-8 border border-slate-gray-light/30 rounded-2xl font-bold text-slate-gray flex items-center gap-2 hover:bg-clinic-white transition-all w-full sm:w-auto justify-center">
                        <FileText className="w-5 h-5" /> {t('Mon Espace Clinique', 'My Clinical Space')}
                    </Link>
                    <Link href="/" className="btn-primary h-14 px-8 text-lg w-full sm:w-auto group">
                        <span>{t('Retour au Catalogue', 'Back to Catalog')}</span>
                        <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
                    </Link>
                </div>
            </div>
        </div>
    );
}

export default function CheckoutSuccessPage() {
    return (
        <React.Suspense fallback={
            <div className="min-h-screen flex items-center justify-center bg-clinic-white">
                <Loader2 className="w-12 h-12 text-medical-blue animate-spin" />
            </div>
        }>
            <SuccessContent />
        </React.Suspense>
    );
}
