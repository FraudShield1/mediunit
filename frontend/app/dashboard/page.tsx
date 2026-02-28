'use client';

import React, { useState, useEffect } from 'react';
import {
    User,
    ShoppingCart,
    Package,
    FileText,
    Download,
    ShieldCheck,
    Upload,
    RefreshCcw,
    Activity,
    ChevronRight,
    Clock,
    AlertCircle
} from 'lucide-react';
import Link from 'next/link';
import {
    fetchDashboardSummary,
    fetchComplianceDocuments,
    reorderLastOrder,
    uploadVerificationLicense,
    fetchOrderInvoice,
    fetchCompliancePack
} from '@/app/lib/api';
import { generateOrderInvoicePDF } from '@/app/lib/invoice';
import ComplianceVault from './components/ComplianceVault';
import { useCartStore } from '@/app/store/useCartStore';
import { useAuthStore } from '@/app/store/useAuthStore';
import { Archive } from 'lucide-react';

export default function UserDashboard() {
    const [activeTab, setActiveTab] = useState<'overview' | 'documents'>('overview');
    const [summary, setSummary] = useState<any>(null);
    const { token } = useAuthStore();
    const { addItem } = useCartStore();
    const [docs, setDocs] = useState<any[]>([]);
    const [loading, setLoading] = useState(true);
    const [uploading, setUploading] = useState(false);
    const [message, setMessage] = useState('');

    const handleDownloadCompliancePack = async (orderId: string) => {
        try {
            const blob = await fetchCompliancePack(orderId);
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = `Dossier_Reglementaire_CMD_${orderId.slice(0, 6).toUpperCase()}.zip`;
            document.body.appendChild(a);
            a.click();
            a.remove();
        } catch (error) {
            console.error(error);
            alert("Erreur lors du téléchargement du dossier réglementaire");
        }
    };

    useEffect(() => {
        if (!token) {
            window.location.href = '/login';
            return;
        }
        async function loadDashboard() {
            try {
                const [summaryData, docsData] = await Promise.all([
                    fetchDashboardSummary(),
                    fetchComplianceDocuments()
                ]);
                setSummary(summaryData);
                setDocs(docsData);
            } catch (error) {
                console.error("Dashboard load failed:", error);
            } finally {
                setLoading(false);
            }
        }
        loadDashboard();
    }, [token]);

    const handleReorder = async () => {
        try {
            const items = await reorderLastOrder();
            items.forEach((item: any) => {
                addItem({
                    id: item.product_id,
                    name: item.product_name || "Produit réordonné",
                    sku: item.sku,
                    price: item.price_per_unit_at_purchase,
                    basePrice: item.price_per_unit_at_purchase,
                    quantity: item.quantity,
                    image: '/images/Pencil Points different colours.jpeg'
                });
            });

            setMessage("Produits ajoutés au panier ! Redirection...");
            setTimeout(() => window.location.href = '/cart', 1500);
        } catch (error) {
            alert("Erreur lors de la commande rapide");
        }
    };

    const handleFileUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
        const file = e.target.files?.[0];
        if (!file) return;

        setUploading(true);
        try {
            await uploadVerificationLicense(file);
            alert("Licence téléchargée avec succès. En attente de vérification manuelle.");
            window.location.reload();
        } catch (error) {
            alert("Échec du téléchargement");
        } finally {
            setUploading(false);
        }
    };

    const handleDownloadInvoice = async (orderId: string) => {
        try {
            const orderData = await fetchOrderInvoice(orderId);
            generateOrderInvoicePDF(orderData);
        } catch (error) {
            console.error(error);
            alert("Erreur lors du téléchargement de la facture : " + error);
        }
    };

    if (loading) return (
        <div className="min-h-screen flex items-center justify-center bg-clinic-white">
            <div className="w-12 h-12 border-4 border-medical-blue/20 border-t-medical-blue rounded-full animate-spin"></div>
        </div>
    );

    return (
        <div className="min-h-screen bg-clinic-white pb-24">
            <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-gray-light/20">
                <div className="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between">
                    <div className="flex items-center gap-2">
                        <Link href="/" className="w-8 h-8 bg-medical-blue rounded-lg flex items-center justify-center">
                            <Activity className="text-white w-5 h-5" />
                        </Link>
                        <span className="text-lg font-bold text-medical-blue-dark">MediUnit Business Suite</span>
                    </div>
                </div>
            </header>

            <main className="max-w-7xl mx-auto px-4 py-8">
                {/* Profile Header */}
                <div className="bg-white rounded-[2.5rem] p-8 mb-8 shadow-xl shadow-medical-blue/5 border border-slate-gray-light/10 flex flex-col md:flex-row items-center justify-between gap-8">
                    <div className="flex items-center gap-6 text-center md:text-left flex-col md:flex-row">
                        <div className="w-20 h-20 bg-medical-blue/10 rounded-3xl flex items-center justify-center">
                            <User className="w-10 h-10 text-medical-blue" />
                        </div>
                        <div>
                            <h2 className="text-2xl font-black text-slate-gray-dark tracking-tight">Espace Praticien</h2>
                            <p className="text-slate-gray font-medium">Gestion Clinique Centralisée</p>
                        </div>
                    </div>

                    <div className="flex items-center gap-4 bg-medical-blue/5 p-6 rounded-3xl border border-medical-blue/10">
                        <div className="w-10 h-10 bg-white rounded-xl flex items-center justify-center shadow-sm">
                            <ShieldCheck className="w-5 h-5 text-medical-blue" />
                        </div>
                        <div>
                            <p className="text-[10px] font-black uppercase tracking-widest text-medical-blue">Statut de Vérification</p>
                            <p className="font-bold text-slate-gray-dark italic opacity-75">Vérification demandée</p>
                        </div>
                    </div>
                </div>

                {/* Dashboard Tabs */}
                <div className="flex items-center gap-2 mb-8 bg-slate-gray-light/5 p-1.5 rounded-2xl w-fit">
                    <button
                        onClick={() => setActiveTab('overview')}
                        className={`h-12 px-6 rounded-xl font-black uppercase tracking-widest text-[10px] transition-all ${activeTab === 'overview' ? 'bg-white text-medical-blue shadow-lg shadow-medical-blue/10' : 'text-slate-gray hover:text-medical-blue'}`}
                    >
                        Aperçu Activité
                    </button>
                    <button
                        onClick={() => setActiveTab('documents')}
                        className={`h-12 px-6 rounded-xl font-black uppercase tracking-widest text-[10px] transition-all ${activeTab === 'documents' ? 'bg-white text-medical-blue shadow-lg shadow-medical-blue/10' : 'text-slate-gray hover:text-medical-blue'}`}
                    >
                        Mes Documents (Vault)
                    </button>
                </div>

                {activeTab === 'overview' ? (
                    <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 animate-in fade-in duration-500">
                        {/* Left Column: Quick Actions & Reorder */}
                        <div className="lg:col-span-2 space-y-8">
                            {/* Quick Reorder Section */}
                            <div className="bg-medical-blue rounded-[2.5rem] p-8 text-white relative overflow-hidden shadow-2xl shadow-medical-blue/30">
                                <div className="relative z-10">
                                    <h3 className="text-2xl font-black mb-2 uppercase">Restockage Rapide</h3>
                                    <p className="text-white/80 mb-8 max-w-md font-medium">Réapprovisionnez votre clinique instantanément sur la base de votre débit historique.</p>
                                    <button
                                        onClick={handleReorder}
                                        className="h-14 px-8 bg-white text-medical-blue rounded-2xl font-black flex items-center gap-3 hover:scale-105 transition-transform active:scale-95 shadow-xl"
                                    >
                                        <RefreshCcw className="w-5 h-5" />
                                        Réordonner le dernier panier
                                    </button>
                                    {message && <p className="mt-4 font-bold animate-pulse text-white">{message}</p>}
                                </div>
                                <Package className="absolute right-[-20px] bottom-[-20px] w-64 h-64 text-white/10 -rotate-12" />
                            </div>

                            {/* Recent Activity */}
                            <div className="bg-white rounded-[2.5rem] p-8 shadow-xl shadow-medical-blue/5 border border-slate-gray-light/10">
                                <h3 className="text-xl font-black text-slate-gray-dark mb-6 flex items-center gap-3 uppercase tracking-tight">
                                    <Clock className="w-6 h-6 text-medical-blue" />
                                    Commandes Récentes
                                </h3>
                                <div className="space-y-4">
                                    {summary?.recent_orders?.map((order: any) => (
                                        <div key={order.id} className="flex items-center justify-between p-5 bg-clinic-white rounded-2xl border border-slate-gray-light/5 hover:border-medical-blue/20 transition-colors">
                                            <div className="flex items-center gap-4">
                                                <div className="w-12 h-12 bg-white rounded-xl flex items-center justify-center shadow-sm">
                                                    <Package className="w-6 h-6 text-medical-blue" />
                                                </div>
                                                <div>
                                                    <p className="font-black text-slate-gray-dark">CMD-{order.id.slice(0, 6).toUpperCase()}</p>
                                                    <p className="text-xs text-slate-gray font-bold">{new Date(order.created_at).toLocaleDateString()}</p>
                                                </div>
                                            </div>
                                            <div className="text-right flex flex-col items-end gap-3">
                                                <p className="font-black text-medical-blue tracking-tight">MAD {order.total_amount}</p>
                                                <div className="flex items-center gap-2">
                                                    <button
                                                        onClick={() => handleDownloadInvoice(order.id)}
                                                        className="h-8 px-3 bg-medical-blue text-white rounded-lg flex items-center gap-2 text-[8px] font-black uppercase tracking-widest hover:bg-medical-blue-dark transition-all"
                                                    >
                                                        <Download className="w-3 h-3" /> Facture PDF
                                                    </button>
                                                    <button
                                                        onClick={() => handleDownloadCompliancePack(order.id)}
                                                        className="h-8 px-3 bg-sage-green text-white rounded-lg flex items-center gap-2 text-[8px] font-black uppercase tracking-widest hover:bg-sage-green-dark transition-all"
                                                    >
                                                        <Archive className="w-3 h-3" /> Dossier Réglementaire (ZIP)
                                                    </button>
                                                    <span className="px-3 py-1 bg-sage-green/10 text-sage-green-dark text-[8px] font-black rounded-lg uppercase tracking-widest">{order.status}</span>
                                                </div>
                                            </div>
                                        </div>
                                    ))}
                                    {(!summary?.recent_orders || summary.recent_orders.length === 0) && (
                                        <div className="text-center py-20">
                                            <AlertCircle className="w-12 h-12 text-slate-gray-light mx-auto mb-4 opacity-20" />
                                            <p className="text-slate-gray font-bold italic">Aucune transaction enregistrée.</p>
                                        </div>
                                    )}
                                </div>
                            </div>
                        </div>

                        {/* Right Column: Mini Stats */}
                        <div className="space-y-8">
                            <div className="bg-white rounded-[2.5rem] p-8 shadow-xl shadow-medical-blue/5 border border-slate-gray-light/10">
                                <h3 className="text-xl font-black text-slate-gray-dark mb-8 flex items-center gap-2 uppercase tracking-tight">
                                    <Activity className="w-6 h-6 text-medical-blue" />
                                    Analytics
                                </h3>
                                <div className="space-y-6">
                                    <div>
                                        <p className="text-[10px] font-black text-slate-gray uppercase tracking-widest mb-1">Volume Total</p>
                                        <p className="text-3xl font-black text-medical-blue tracking-tighter">MAD {summary?.analytics?.total_spent || '0.00'}</p>
                                    </div>
                                    <div>
                                        <p className="text-[10px] font-black text-slate-gray uppercase tracking-widest mb-1">Dernière Opération</p>
                                        <p className="text-lg font-bold text-slate-gray-dark">
                                            {summary?.analytics?.last_order_date ? new Date(summary.analytics.last_order_date).toLocaleDateString() : 'N/A'}
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div className="bg-white rounded-[2.5rem] p-8 shadow-xl shadow-medical-blue/5 border border-slate-gray-light/10">
                                <h3 className="text-xl font-black text-slate-gray-dark mb-4 flex items-center gap-2 uppercase tracking-tight">
                                    <ShieldCheck className="w-6 h-6 text-medical-blue" />
                                    Conformité
                                </h3>
                                <p className="text-xs text-slate-gray font-medium leading-relaxed mb-6">Soumettez votre licence pour débloquer les tarifs cliniques et les équipements réglementés.</p>
                                <label className="w-full flex items-center justify-center gap-2 h-12 rounded-xl bg-medical-blue/5 border-2 border-dashed border-medical-blue/20 text-medical-blue font-black uppercase tracking-widest text-[10px] cursor-pointer hover:bg-medical-blue/10 transition-all">
                                    <Upload className="w-4 h-4" />
                                    {uploading ? 'Chargement...' : 'Soumettre Licence'}
                                    <input type="file" className="hidden" onChange={handleFileUpload} accept=".pdf,.png,.jpg" />
                                </label>
                            </div>
                        </div>
                    </div>
                ) : (
                    <ComplianceVault documents={docs} />
                )}
            </main>
        </div>
    );
}
