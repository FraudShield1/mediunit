'use client';

import React, { useState, useEffect } from 'react';
import Image from 'next/image';
import {
    LayoutDashboard, ShoppingCart, Users, TrendingUp, Search, Filter,
    CheckCircle2, Clock, Package, ChevronDown, Plus, Edit2, Trash2, X, FileText, Settings, Save, ShieldCheck
} from 'lucide-react';
import {
    fetchAdminOrders,
    fetchAdminOrderById,
    fetchAdminUsers,
    fetchProducts,
    updateOrderStatus,
    verifyUser,
    rejectUser,
    createProduct,
    updateProduct,
    deleteProduct,
    fetchCategories,
    fetchBrands,
    createBrand,
    deleteBrand,
    updateBrand,
    fetchAdminStats,
    fetchAdminDashboardSummary,
    fetchAdminSettings,
    updateAdminSettings,
    fetchOrderInvoicePdfBlob,
    fetchUserVerificationLicenseBlob
} from '@/app/lib/api';
import { useLanguageStore } from '@/app/store/useLanguageStore';
import { useAuthStore } from '@/app/store/useAuthStore';
import { toast } from 'react-hot-toast';

type TabType = 'dashboard' | 'orders' | 'products' | 'customers' | 'brands' | 'settings';

export default function AdminDashboard() {
    const { t } = useLanguageStore();
    const { token } = useAuthStore();
    const [activeTab, setActiveTab] = useState<TabType>('dashboard');
    const [users, setUsers] = useState<any[]>([]);
    const [statsResult, setStatsResult] = useState<any>(null);
    const [adminSummary, setAdminSummary] = useState<any>(null);
    const [settings, setSettings] = useState<any[]>([]);
    const [isSavingSettings, setIsSavingSettings] = useState(false);
    const [products, setProducts] = useState<any[]>([]);
    const [orders, setOrders] = useState<any[]>([]);
    const [categories, setCategories] = useState<any[]>([]);
    const [brands, setBrands] = useState<any[]>([]);
    const [loading, setLoading] = useState(true);
    const [searchTerm, setSearchTerm] = useState('');
    const [orderStatusFilter, setOrderStatusFilter] = useState<string>('');
    const [dashboardStats, setDashboardStats] = useState<any>({ count: 0, total: 0 });

    // Orders pagination
    const [ordersLimit, setOrdersLimit] = useState<number>(25);
    const [ordersOffset, setOrdersOffset] = useState<number>(0);

    // Customers filters
    const [customerStatusFilter, setCustomerStatusFilter] = useState<string>('');

    // Brands create
    const [isCreatingBrand, setIsCreatingBrand] = useState(false);

    // Product Modal State
    const [isProductModalOpen, setIsProductModalOpen] = useState(false);
    const [editingProduct, setEditingProduct] = useState<any | null>(null);
    const [productForm, setProductForm] = useState<any>({
        name: '', name_en: '', sku: '', base_unit_price: 0, stock: 100,
        description: '', description_en: '', image_url: '',
        category_id: 1, brand_id: 1, specifications: '{}', packaging_type: 'Unité'
    });

    // Brand Modal State
    const [isBrandModalOpen, setIsBrandModalOpen] = useState(false);
    const [editingBrand, setEditingBrand] = useState<any | null>(null);
    const [brandForm, setBrandForm] = useState<any>({ name: '', logo_url: '', manufacturer: '', notes: '', ce_certificate_url: '' });

    // Order View State
    const [selectedOrder, setSelectedOrder] = useState<any | null>(null);
    const [selectedOrderDetails, setSelectedOrderDetails] = useState<any | null>(null);
    const [isLoadingOrderDetails, setIsLoadingOrderDetails] = useState(false);

    // User Rejection State
    const [isRejectModalOpen, setIsRejectModalOpen] = useState(false);
    const [userToReject, setUserToReject] = useState<any | null>(null);
    const [rejectionReason, setRejectionReason] = useState('');

    useEffect(() => {
        loadAdminData();
    }, [token]);

    async function loadAdminData() {
        if (!token) {
            window.location.href = '/login?from=/admin';
            return;
        }

        setLoading(true);
        try {
            const [usersData, productsData, categoriesData, ordersData, statsData, brandsData, settingsData, summaryData] = await Promise.all([
                fetchAdminUsers(),
                fetchProducts(),
                fetchCategories(),
                fetchAdminOrders({ limit: ordersLimit, offset: ordersOffset }),
                fetchAdminStats(),
                fetchBrands(),
                fetchAdminSettings(),
                fetchAdminDashboardSummary()
            ]);
            setUsers(usersData);
            setProducts(productsData.data || productsData.items || productsData);
            setCategories(categoriesData);
            setOrders(ordersData);
            setStatsResult(statsData);
            setBrands(brandsData);
            setSettings(settingsData);
            setDashboardStats(statsData.stats || { count: 0, total: 0 });
            setAdminSummary(summaryData);
        } catch (error) {
            console.error("Failed to load admin data:", error);
            if (error instanceof Error && error.message.includes('401')) {
                window.location.href = '/login?from=/admin';
            }
        } finally {
            setLoading(false);
        }
    }

    const handleUpdateStatus = async (orderId: string, status: string) => {
        try {
            await updateOrderStatus(orderId, status);
            const ordersData = await fetchAdminOrders({ status: orderStatusFilter || undefined, q: searchTerm || undefined, limit: ordersLimit, offset: ordersOffset });
            setOrders(ordersData);
            if (selectedOrder && String(selectedOrder.id) === String(orderId)) {
                setSelectedOrder({ ...selectedOrder, status });
            }
            if (selectedOrderDetails && String(selectedOrderDetails.id) === String(orderId)) {
                setSelectedOrderDetails({ ...selectedOrderDetails, status });
            }
            toast.success("Statut de la commande mis à jour");
        } catch (error) {
            toast.error("Erreur lors de la mise à jour du statut");
        }
    };

    const handleDownloadInvoicePdf = async (orderId: string | number) => {
        try {
            const blob = await fetchOrderInvoicePdfBlob(String(orderId));
            const url = window.URL.createObjectURL(blob);
            window.open(url, '_blank');
            setTimeout(() => window.URL.revokeObjectURL(url), 60_000);
        } catch (e) {
            console.error(e);
            toast.error(t('Erreur de téléchargement facture', 'Invoice download failed'));
        }
    };

    const handleDownloadLicense = async (licenseUrl: string) => {
        try {
            const blob = await fetchUserVerificationLicenseBlob(licenseUrl);
            const url = window.URL.createObjectURL(blob);
            window.open(url, '_blank');
            setTimeout(() => window.URL.revokeObjectURL(url), 60_000);
        } catch (e) {
            console.error(e);
            toast.error(t('Erreur de téléchargement licence', 'License download failed'));
        }
    };

    const openOrderModal = async (order: any) => {
        setSelectedOrder(order);
        setSelectedOrderDetails(null);
        setIsLoadingOrderDetails(true);
        try {
            const details = await fetchAdminOrderById(order.id);
            setSelectedOrderDetails(details);
        } catch (e) {
            console.error('Failed to load order details', e);
            toast.error(t('Impossible de charger les détails de commande', 'Failed to load order details'));
        } finally {
            setIsLoadingOrderDetails(false);
        }
    };

    const handleVerifyUser = async (userId: string) => {
        try {
            await verifyUser(userId);
            const usersData = await fetchAdminUsers();
            setUsers(usersData);
            toast.success("Utilisateur vérifié avec succès");
        } catch (error) {
            toast.error("Erreur lors de la vérification");
        }
    };

    const handleRejectUser = async () => {
        if (!userToReject || !rejectionReason) return;
        try {
            await rejectUser(userToReject.id, rejectionReason);
            const usersData = await fetchAdminUsers();
            setUsers(usersData);
            toast.success("Utilisateur refusé");
            setIsRejectModalOpen(false);
            setUserToReject(null);
            setRejectionReason('');
        } catch (error) {
            toast.error("Erreur lors du refus");
        }
    };

    const handleSaveSettings = async (e: React.FormEvent) => {
        e.preventDefault();
        setIsSavingSettings(true);
        try {
            await updateAdminSettings(settings);
            toast.success("Paramètres enregistrés");
        } catch (error) {
            toast.error("Erreur lors de l'enregistrement");
        } finally {
            setIsSavingSettings(false);
        }
    };

    // Product CRUD handlers
    const openProductModal = (product: any = null) => {
        if (product) {
            setEditingProduct(product);
            setProductForm({
                name: product.name,
                name_en: product.name_en || '',
                sku: product.sku,
                base_unit_price: product.base_unit_price,
                stock: product.stock_quantity || product.stock || 0,
                description: product.description || '',
                description_en: product.description_en || '',
                image_url: product.image_url || '',
                category_id: product.category_id || (categories[0]?.id || 1),
                brand_id: product.brand_id || (brands[0]?.id || 1),
                specifications: typeof product.specifications === 'string' ? product.specifications : JSON.stringify(product.specifications, null, 2),
                packaging_type: product.packaging_type || 'Unité'
            });
        } else {
            setEditingProduct(null);
            setProductForm({
                name: '', name_en: '', sku: '', base_unit_price: 0, stock: 100,
                description: '', description_en: '', image_url: '',
                category_id: categories[0]?.id || 1,
                brand_id: brands[0]?.id || 1,
                specifications: '{}', packaging_type: 'Unité'
            });
        }
        setIsProductModalOpen(true);
    };

    const handleSaveProduct = async (e: React.FormEvent) => {
        e.preventDefault();
        try {
            const currentData = { ...productForm };

            try {
                if (typeof currentData.specifications === 'string') {
                    JSON.parse(currentData.specifications);
                }
            } catch {
                toast.error(t('Le champ spécifications doit être un JSON valide', 'Specifications must be valid JSON'));
                return;
            }

            if (editingProduct) {
                await updateProduct(editingProduct.id, currentData);
                toast.success("Produit mis à jour !");
            } else {
                await createProduct(currentData);
                toast.success("Produit crée !");
            }
            setIsProductModalOpen(false);
            const productsData = await fetchProducts();
            setProducts(productsData.data || productsData.items || productsData);
        } catch (error) {
            toast.error("Error saving product.");
        }
    };

    const handleDeleteProduct = async (productId: string) => {
        if (confirm("Êtes-vous sûr de vouloir supprimer ce produit ?")) {
            try {
                await deleteProduct(productId);
                const productsData = await fetchProducts();
                setProducts(productsData.data || productsData.items || productsData);
                toast.success("Produit supprimé !");
            } catch (error) {
                toast.error("Error deleting product.");
            }
        }
    };

    const openBrandModal = (brand: any = null) => {
        if (brand) {
            setEditingBrand(brand);
            setBrandForm({
                name: brand.name,
                logo_url: brand.logo_url || '',
                manufacturer: brand.manufacturer || '',
                notes: brand.notes || '',
                ce_certificate_url: brand.ce_certificate_url || ''
            });
        } else {
            setEditingBrand(null);
            setBrandForm({ name: '', logo_url: '', manufacturer: '', notes: '', ce_certificate_url: '' });
        }
        setIsBrandModalOpen(true);
    };

    const handleSaveBrand = async (e: React.FormEvent) => {
        e.preventDefault();
        try {
            if (editingBrand) {
                await updateBrand(editingBrand.id, brandForm);
                toast.success("Marque mise à jour !");
            } else {
                setIsCreatingBrand(true);
                await createBrand(brandForm);
                toast.success("Marque créée !");
            }
            setIsBrandModalOpen(false);
            const brandsData = await fetchBrands();
            setBrands(brandsData);
        } catch (error) {
            toast.error("Erreur lors de la sauvegarde de la marque.");
        } finally {
            setIsCreatingBrand(false);
        }
    };

    const handleDeleteBrand = async (brandId: number) => {
        if (!confirm(t('Supprimer cette marque ?', 'Delete this brand?'))) return;
        try {
            await deleteBrand(brandId);
            const brandsData = await fetchBrands();
            setBrands(brandsData);
            toast.success(t('Marque supprimée', 'Brand deleted'));
        } catch (e) {
            console.error(e);
            toast.error(t('Erreur suppression marque', 'Failed to delete brand'));
        }
    };

    const stats = [
        { label: t('Utilisateurs', 'Users'), value: users.length, icon: Users },
        { label: t('Commandes', 'Orders'), value: adminSummary?.stats?.count ?? orders.length, icon: ShoppingCart },
        { label: t('Produits', 'Products'), value: products.length, icon: Package },
        { label: t('Revenu (H.T)', 'Revenue (Excl. Tax)'), value: `MAD ${Number(adminSummary?.stats?.total || 0).toLocaleString()}`, icon: TrendingUp }
    ];

    if (loading) return (
        <div className="min-h-screen flex items-center justify-center bg-[#f4f6f8]">
            <div className="w-10 h-10 border-4 border-medical-blue/20 border-t-medical-blue rounded-full animate-spin"></div>
        </div>
    );

    return (
        <div className="min-h-screen bg-[#f4f6f8] flex font-sans">
            {/* Sidebar (Shopify Style) */}
            <aside className="w-64 bg-white border-r border-gray-200 flex flex-col fixed h-full z-10">
                <div className="p-6">
                    <div className="flex items-center gap-3">
                        <div className="w-8 h-8 bg-[#000000] rounded flex items-center justify-center">
                            <span className="text-white font-bold text-sm">MU</span>
                        </div>
                        <span className="font-semibold text-gray-900 text-lg">MediUnit Admin</span>
                    </div>
                </div>

                <nav className="flex-1 px-4 space-y-1">
                    {[
                        { id: 'dashboard', name: t('Tableau de bord', 'Dashboard'), icon: LayoutDashboard },
                        { id: 'orders', name: t('Commandes', 'Orders'), icon: ShoppingCart },
                        { id: 'products', name: t('Produits', 'Products'), icon: Package },
                        { id: 'customers', name: t('Clients', 'Customers'), icon: Users },
                        { id: 'brands', name: t('Marques', 'Brands'), icon: ShieldCheck },
                        { id: 'settings', name: t('Paramètres', 'Settings'), icon: Settings },
                    ].map((item) => (
                        <button
                            key={item.id}
                            onClick={() => setActiveTab(item.id as TabType)}
                            className={`w-full flex items-center gap-3 px-3 py-2 rounded-md text-sm font-medium transition-colors ${activeTab === item.id
                                ? 'bg-gray-100 text-gray-900'
                                : 'text-gray-600 hover:bg-gray-50 hover:text-gray-900'
                                }`}
                        >
                            <item.icon className={`w-5 h-5 ${activeTab === item.id ? 'text-gray-900' : 'text-gray-500'}`} />
                            {item.name}
                        </button>
                    ))}
                </nav>
            </aside>

            {/* Main Content */}
            <main className="flex-1 ml-64 p-8">
                {/* Header Area */}
                <header className="flex justify-between items-center mb-8">
                    <div className="flex items-center gap-4">
                        <h1 className="text-2xl font-bold text-gray-900 capitalize">
                            {activeTab === 'dashboard' ? 'Aperçu' : activeTab}
                        </h1>
                        <button onClick={loadAdminData} className="p-2 text-gray-400 hover:text-gray-600 transition-colors">
                            <Clock className="w-4 h-4" />
                        </button>
                    </div>
                    <div className="flex items-center gap-4">
                        <div className="relative">
                            <Search className="w-4 h-4 text-gray-400 absolute left-3 top-1/2 -translate-y-1/2" />
                            <input
                                type="text"
                                placeholder="Rechercher..."
                                className="pl-9 pr-4 py-2 border border-gray-300 rounded-md text-sm focus:ring-2 focus:ring-medical-blue focus:border-medical-blue"
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                            />
                        </div>
                        <div className="w-8 h-8 bg-gray-200 rounded-full flex items-center justify-center text-sm font-bold text-gray-600">
                            A
                        </div>
                    </div>
                </header>

                <div className="max-w-6xl mx-auto">
                    {activeTab === 'settings' && (
                        <div className="bg-white rounded-xl shadow-sm border border-gray-200 overflow-hidden animate-in fade-in duration-500">
                            <div className="px-8 py-6 border-b border-gray-100 flex justify-between items-center bg-gray-50/50">
                                <div>
                                    <h2 className="text-xl font-bold text-gray-900">{t('Paramètres de la Plateforme', 'Platform Settings')}</h2>
                                    <p className="text-sm text-gray-500 mt-1">{t('Gérez les configurations globales, les frais et les contacts.', 'Manage global configurations, fees, and contacts.')}</p>
                                </div>
                                <button
                                    onClick={handleSaveSettings}
                                    disabled={isSavingSettings}
                                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-6 py-2.5 rounded-xl text-sm font-bold shadow-lg shadow-medical-blue/20 transition-all flex items-center gap-2 disabled:opacity-50"
                                >
                                    {isSavingSettings ? <div className="w-4 h-4 border-2 border-white/20 border-t-white rounded-full animate-spin" /> : <Save className="w-4 h-4" />}
                                    {t('Sauvegarder les modifications', 'Save Changes')}
                                </button>
                            </div>

                            <form onSubmit={handleSaveSettings} className="p-8 space-y-8">
                                <div className="grid grid-cols-1 md:grid-cols-2 gap-x-12 gap-y-8">
                                    {/* Contact Section */}
                                    <div className="space-y-6">
                                        <h3 className="text-sm font-bold text-gray-400 uppercase tracking-widest flex items-center gap-2">
                                            <Users className="w-4 h-4" /> {t('Support & Contact', 'Support & Contact')}
                                        </h3>
                                        <div className="space-y-4">
                                            <div>
                                                <label className="block text-xs font-bold text-gray-700 mb-1.5">{t('Numéro WhatsApp', 'WhatsApp Number')}</label>
                                                <input
                                                    type="text"
                                                    value={settings.find(s => s.key === 'whatsapp_number')?.value || ''}
                                                    onChange={e => setSettings(settings.map(s => s.key === 'whatsapp_number' ? { ...s, value: e.target.value } : s))}
                                                    className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-medical-blue/10 outline-none"
                                                />
                                            </div>
                                            <div>
                                                <label className="block text-xs font-bold text-gray-700 mb-1.5">Email de Support</label>
                                                <input
                                                    type="email"
                                                    value={settings.find(s => s.key === 'support_email')?.value || ''}
                                                    onChange={e => setSettings(settings.map(s => s.key === 'support_email' ? { ...s, value: e.target.value } : s))}
                                                    className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-medical-blue/10 outline-none"
                                                />
                                            </div>
                                        </div>
                                    </div>

                                    {/* Financials Section */}
                                    <div className="space-y-6">
                                        <h3 className="text-sm font-bold text-gray-400 uppercase tracking-widest flex items-center gap-2">
                                            <TrendingUp className="w-4 h-4" /> Logistique & Taxes
                                        </h3>
                                        <div className="space-y-4">
                                            <div>
                                                <label className="block text-xs font-bold text-gray-700 mb-1.5">Frais de Livraison Standard (MAD)</label>
                                                <input
                                                    type="number"
                                                    value={settings.find(s => s.key === 'shipping_standard')?.value || ''}
                                                    onChange={e => setSettings(settings.map(s => s.key === 'shipping_standard' ? { ...s, value: e.target.value } : s))}
                                                    className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-medical-blue/10 outline-none"
                                                />
                                            </div>
                                            <div>
                                                <label className="block text-xs font-bold text-gray-700 mb-1.5">Seuil Livraison Gratuite (MAD)</label>
                                                <input
                                                    type="number"
                                                    value={settings.find(s => s.key === 'shipping_free_threshold')?.value || ''}
                                                    onChange={e => setSettings(settings.map(s => s.key === 'shipping_free_threshold' ? { ...s, value: e.target.value } : s))}
                                                    className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-medical-blue/10 outline-none"
                                                />
                                            </div>
                                            <div>
                                                <label className="block text-xs font-bold text-gray-700 mb-1.5">Taux TVA (%)</label>
                                                <input
                                                    type="number"
                                                    value={settings.find(s => s.key === 'vat_rate')?.value || ''}
                                                    onChange={e => setSettings(settings.map(s => s.key === 'vat_rate' ? { ...s, value: e.target.value } : s))}
                                                    className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-medical-blue/10 outline-none"
                                                />
                                            </div>
                                        </div>
                                    </div>

                                    {/* Announcements Section */}
                                    <div className="col-span-full space-y-6 pt-4 border-t border-gray-100">
                                        <h3 className="text-sm font-bold text-gray-400 uppercase tracking-widest flex items-center gap-2">
                                            <LayoutDashboard className="w-4 h-4" /> Communication Boutique
                                        </h3>
                                        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                                            <div>
                                                <label className="block text-xs font-bold text-gray-700 mb-1.5">Texte de la Bannière</label>
                                                <textarea
                                                    rows={3}
                                                    value={settings.find(s => s.key === 'banner_text')?.value || ''}
                                                    onChange={e => setSettings(settings.map(s => s.key === 'banner_text' ? { ...s, value: e.target.value } : s))}
                                                    className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-medical-blue/10 outline-none"
                                                    placeholder="Promotion, annonce important..."
                                                />
                                            </div>
                                            <div className="bg-amber-50 rounded-2xl p-6 border border-amber-100">
                                                <div className="flex items-center justify-between">
                                                    <div>
                                                        <h4 className="text-sm font-bold text-amber-900">Mode Maintenance</h4>
                                                        <p className="text-xs text-amber-700 mt-1">Désactive les commandes sur toute la boutique.</p>
                                                    </div>
                                                    <button
                                                        type="button"
                                                        onClick={() => setSettings(settings.map(s => s.key === 'maintenance_mode' ? { ...s, value: s.value === 'true' ? 'false' : 'true' } : s))}
                                                        className={`w-12 h-6 rounded-full transition-colors relative ${settings.find(s => s.key === 'maintenance_mode')?.value === 'true' ? 'bg-amber-600' : 'bg-gray-300'}`}
                                                    >
                                                        <div className={`absolute top-1 w-4 h-4 bg-white rounded-full transition-all ${settings.find(s => s.key === 'maintenance_mode')?.value === 'true' ? 'left-7' : 'left-1'}`} />
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    )}

                    {activeTab === 'customers' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <div className="px-6 py-4 border-b border-gray-200 flex flex-col sm:flex-row sm:items-center gap-3 sm:justify-between">
                                <div className="flex items-center gap-2">
                                    <div className="relative">
                                        <Search className="w-4 h-4 text-gray-400 absolute left-3 top-1/2 -translate-y-1/2" />
                                        <input
                                            value={searchTerm}
                                            onChange={(e) => setSearchTerm(e.target.value)}
                                            placeholder={t('Rechercher: email / clinique / INPE', 'Search: email / clinic / INPE')}
                                            className="pl-9 pr-3 py-2 border border-gray-200 rounded-lg text-sm w-80 max-w-full focus:outline-none focus:ring-2 focus:ring-medical-blue/20"
                                        />
                                    </div>
                                    <select
                                        value={customerStatusFilter}
                                        onChange={(e) => setCustomerStatusFilter(e.target.value)}
                                        className="border border-gray-200 rounded-lg px-2 py-2 text-sm font-semibold text-gray-700 bg-white focus:outline-none focus:ring-2 focus:ring-medical-blue/20"
                                    >
                                        <option value="">{t('Tous statuts', 'All statuses')}</option>
                                        <option value="pending">{t('En attente', 'Pending')}</option>
                                        <option value="verified">{t('Vérifié', 'Verified')}</option>
                                        <option value="rejected">{t('Rejeté', 'Rejected')}</option>
                                    </select>
                                </div>
                                <button
                                    onClick={async () => {
                                        try {
                                            const usersData = await fetchAdminUsers();
                                            setUsers(usersData);
                                        } catch {
                                            toast.error(t('Erreur de chargement', 'Failed to load'));
                                        }
                                    }}
                                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-4 py-2 rounded-lg text-sm font-semibold transition-all shadow-md active:scale-95"
                                >
                                    {t('Rafraîchir', 'Refresh')}
                                </button>
                            </div>

                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium border-b border-gray-100">
                                    <tr>
                                        <th className="px-6 py-3">{t('Utilisateur', 'User')}</th>
                                        <th className="px-6 py-3">{t('Clinique', 'Clinic')}</th>
                                        <th className="px-6 py-3">INPE</th>
                                        <th className="px-6 py-3">{t('Statut', 'Status')}</th>
                                        <th className="px-6 py-3 text-right">{t('Actions', 'Actions')}</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-100">
                                    {users
                                        .filter((u: any) => {
                                            const s = searchTerm.toLowerCase();
                                            if (!s) return true;
                                            return String(u.email || '').toLowerCase().includes(s) ||
                                                String(u.clinic_name || '').toLowerCase().includes(s) ||
                                                String(u.inpe_number || '').toLowerCase().includes(s) ||
                                                String(u.full_name || '').toLowerCase().includes(s);
                                        })
                                        .filter((u: any) => (customerStatusFilter ? u.verification_status === customerStatusFilter : true))
                                        .map((u: any) => (
                                            <tr key={u.id} className="hover:bg-gray-50/50">
                                                <td className="px-6 py-4">
                                                    <div className="font-semibold text-gray-900">{u.full_name || '-'}</div>
                                                    <div className="text-xs text-gray-400">{u.email}</div>
                                                </td>
                                                <td className="px-6 py-4">
                                                    <div className="font-semibold text-gray-900">{u.clinic_name || '-'}</div>
                                                    <div className="text-xs text-gray-400">{u.city || 'Casablanca'}</div>
                                                </td>
                                                <td className="px-6 py-4 text-gray-700 font-mono text-xs">{u.inpe_number || '-'}</td>
                                                <td className="px-6 py-4">
                                                    <span className={`inline-flex items-center px-2 py-0.5 rounded-full text-xs font-bold ${
                                                        u.verification_status === 'verified' ? 'bg-emerald-100 text-emerald-800' :
                                                            u.verification_status === 'rejected' ? 'bg-red-100 text-red-800' :
                                                                'bg-amber-100 text-amber-800'
                                                    }`}>
                                                        {u.verification_status}
                                                    </span>
                                                </td>
                                                <td className="px-6 py-4 text-right">
                                                    {u.verification_license_url ? (
                                                        <button
                                                            onClick={() => handleDownloadLicense(u.verification_license_url)}
                                                            className="px-3 py-1.5 rounded-lg border border-gray-200 text-gray-700 font-semibold mr-2"
                                                        >
                                                            {t('Licence', 'License')}
                                                        </button>
                                                    ) : null}
                                                    {u.verification_status !== 'verified' ? (
                                                        <button
                                                            onClick={() => handleVerifyUser(u.id)}
                                                            className="px-3 py-1.5 rounded-lg bg-emerald-600 text-white font-bold mr-2"
                                                        >
                                                            {t('Vérifier', 'Verify')}
                                                        </button>
                                                    ) : null}
                                                    {u.verification_status !== 'rejected' ? (
                                                        <button
                                                            onClick={() => {
                                                                setUserToReject(u);
                                                                setIsRejectModalOpen(true);
                                                            }}
                                                            className="px-3 py-1.5 rounded-lg bg-red-600 text-white font-bold"
                                                        >
                                                            {t('Rejeter', 'Reject')}
                                                        </button>
                                                    ) : null}
                                                </td>
                                            </tr>
                                        ))}
                                </tbody>
                            </table>
                        </div>
                    )}

                    {activeTab === 'brands' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <div className="px-6 py-4 border-b border-gray-200 flex justify-between items-center">
                                <h2 className="text-base font-semibold text-gray-900 tracking-tight">{t('Marques', 'Brands')}</h2>
                                <button
                                    onClick={() => openBrandModal()}
                                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-4 py-2 rounded-lg text-sm font-semibold flex items-center gap-2 transition-all shadow-md active:scale-95"
                                >
                                    <Plus className="w-4 h-4" /> {t('Nouvelle Marque', 'New Brand')}
                                </button>
                            </div>
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium border-b border-gray-100">
                                    <tr>
                                        <th className="px-6 py-3">{t('Nom', 'Name')}</th>
                                        <th className="px-6 py-3">{t('Manufacturer', 'Manufacturer')}</th>
                                        <th className="px-6 py-3">{t('CE', 'CE')}</th>
                                        <th className="px-6 py-3 text-right">{t('Actions', 'Actions')}</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-100">
                                    {brands
                                        .filter((b: any) => {
                                            const s = searchTerm.toLowerCase();
                                            if (!s) return true;
                                            return String(b.name || '').toLowerCase().includes(s) || String(b.manufacturer || '').toLowerCase().includes(s);
                                        })
                                        .map((b: any) => (
                                            <tr key={b.id} className="hover:bg-gray-50/50 group">
                                                <td className="px-6 py-4 font-semibold text-gray-900">{b.name}</td>
                                                <td className="px-6 py-4 text-gray-600">{b.manufacturer || '-'}</td>
                                                <td className="px-6 py-4">
                                                    {b.ce_certificate_url ? (
                                                        <a href={b.ce_certificate_url} target="_blank" className="text-medical-blue font-bold text-xs">LINK</a>
                                                    ) : (
                                                        <span className="text-gray-400 text-xs">-</span>
                                                    )}
                                                </td>
                                                <td className="px-6 py-4 text-right opacity-0 group-hover:opacity-100 transition-opacity">
                                                    <button onClick={() => openBrandModal(b)} className="p-1.5 text-gray-400 hover:text-medical-blue hover:bg-medical-blue/5 rounded-md">
                                                        <Edit2 className="w-4 h-4" />
                                                    </button>
                                                    <button onClick={() => handleDeleteBrand(Number(b.id))} className="p-1.5 text-gray-400 hover:text-red-600 hover:bg-red-50 rounded-md ml-1">
                                                        <Trash2 className="w-4 h-4" />
                                                    </button>
                                                </td>
                                            </tr>
                                        ))}
                                </tbody>
                            </table>
                        </div>
                    )}

                    {activeTab === 'dashboard' && (
                        <div className="space-y-6">
                            <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
                                {stats.map((stat, i) => (
                                    <div key={i} className="bg-white p-5 rounded-lg shadow-sm border border-gray-200 hover:border-medical-blue/30 transition-all group">
                                        <div className="flex items-center gap-3 mb-2">
                                            <div className="p-2 bg-gray-50 rounded-md group-hover:bg-medical-blue/5">
                                                <stat.icon className="w-5 h-5 text-gray-400 group-hover:text-medical-blue" />
                                            </div>
                                            <span className="text-sm font-medium text-gray-500">{stat.label}</span>
                                        </div>
                                        <div className="text-2xl font-semibold text-gray-900 tracking-tight">{stat.value}</div>
                                    </div>
                                ))}
                            </div>

                            <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                                <div className="px-6 py-4 border-b border-gray-200">
                                    <h2 className="text-base font-semibold text-gray-900">{t('Commandes Récentes', 'Recent Orders')}</h2>
                                </div>
                                <table className="w-full text-left text-sm">
                                    <thead className="bg-[#f9fafb] text-gray-500 font-medium">
                                        <tr>
                                            <th className="px-6 py-3">{t('Commande', 'Order')}</th>
                                            <th className="px-6 py-3">{t('Date', 'Date')}</th>
                                            <th className="px-6 py-3">{t('Total', 'Total')}</th>
                                            <th className="px-6 py-3">{t('Statut', 'Status')}</th>
                                        </tr>
                                    </thead>
                                    <tbody className="divide-y divide-gray-200">
                                        {(adminSummary?.recent_orders || orders.slice(0, 5)).map((order: any) => (
                                            <tr key={order.id} className="hover:bg-gray-50 cursor-pointer" onClick={() => openOrderModal(order)}>
                                                <td className="px-6 py-4 font-medium text-gray-900">#{order.id.toString().slice(0, 6)}</td>
                                                <td className="px-6 py-4 text-gray-500">{new Date(order.created_at).toLocaleDateString()}</td>
                                                <td className="px-6 py-4 text-gray-900 font-semibold">MAD {order.total_amount}</td>
                                                <td className="px-6 py-4">
                                                    <span className={`inline-flex items-center px-2 py-0.5 rounded-full text-xs font-medium 
                                                        ${order.status === 'pending' ? 'bg-amber-100 text-amber-800' :
                                                            order.status === 'delivered' ? 'bg-emerald-100 text-emerald-800' : 'bg-blue-100 text-blue-800'}`}>
                                                        {order.status}
                                                    </span>
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>

                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div className="bg-white rounded-lg shadow-sm border border-gray-200 p-6">
                                    <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-2">{t('Vérifications', 'Verifications')}</div>
                                    <div className="text-3xl font-black text-gray-900">{adminSummary?.pending_verifications ?? 0}</div>
                                    <div className="text-sm text-gray-500">{t('Comptes en attente', 'Pending accounts')}</div>
                                </div>
                                <div className="bg-white rounded-lg shadow-sm border border-gray-200 p-6">
                                    <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-2">{t('Stock critique', 'Low stock')}</div>
                                    <div className="text-3xl font-black text-gray-900">{adminSummary?.low_stock_count ?? 0}</div>
                                    <div className="text-sm text-gray-500">{t('Produits <= 5 unités', 'Products <= 5 units')}</div>
                                </div>
                            </div>
                        </div>
                    )}

                    {activeTab === 'orders' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <div className="px-6 py-4 border-b border-gray-200 flex flex-col sm:flex-row sm:items-center gap-3 sm:justify-between">
                                <div className="flex items-center gap-2">
                                    <div className="relative">
                                        <Search className="w-4 h-4 text-gray-400 absolute left-3 top-1/2 -translate-y-1/2" />
                                        <input
                                            value={searchTerm}
                                            onChange={(e) => setSearchTerm(e.target.value)}
                                            placeholder={t('Rechercher par ID / email / clinique', 'Search by ID / email / clinic')}
                                            className="pl-9 pr-3 py-2 border border-gray-200 rounded-lg text-sm w-72 max-w-full focus:outline-none focus:ring-2 focus:ring-medical-blue/20"
                                        />
                                    </div>
                                    <select
                                        value={orderStatusFilter}
                                        onChange={(e) => setOrderStatusFilter(e.target.value)}
                                        className="border border-gray-200 rounded-lg px-2 py-2 text-sm font-semibold text-gray-700 bg-white focus:outline-none focus:ring-2 focus:ring-medical-blue/20"
                                    >
                                        <option value="">{t('Tous statuts', 'All statuses')}</option>
                                        <option value="pending">{t('En attente', 'Pending')}</option>
                                        <option value="processing">{t('Traitement', 'Processing')}</option>
                                        <option value="shipped">{t('Expédiée', 'Shipped')}</option>
                                        <option value="delivered">{t('Livrée', 'Delivered')}</option>
                                        <option value="cancelled">{t('Annulée', 'Cancelled')}</option>
                                    </select>
                                    <select
                                        value={ordersLimit}
                                        onChange={(e) => {
                                            setOrdersLimit(parseInt(e.target.value));
                                            setOrdersOffset(0);
                                        }}
                                        className="border border-gray-200 rounded-lg px-2 py-2 text-sm font-semibold text-gray-700 bg-white focus:outline-none focus:ring-2 focus:ring-medical-blue/20"
                                    >
                                        <option value={10}>10</option>
                                        <option value={25}>25</option>
                                        <option value={50}>50</option>
                                    </select>
                                </div>
                                <button
                                    onClick={async () => {
                                        try {
                                            const ordersData = await fetchAdminOrders({ status: orderStatusFilter || undefined, q: searchTerm || undefined, limit: ordersLimit, offset: ordersOffset });
                                            setOrders(ordersData);
                                        } catch (e) {
                                            toast.error(t('Erreur de chargement', 'Failed to load'));
                                        }
                                    }}
                                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-4 py-2 rounded-lg text-sm font-semibold transition-all shadow-md active:scale-95"
                                >
                                    {t('Appliquer', 'Apply')}
                                </button>
                            </div>

                            <div className="px-6 py-3 border-b border-gray-100 flex items-center justify-between text-sm">
                                <div className="text-gray-500">Offset: {ordersOffset}</div>
                                <div className="flex gap-2">
                                    <button
                                        onClick={async () => {
                                            const next = Math.max(0, ordersOffset - ordersLimit);
                                            setOrdersOffset(next);
                                            try {
                                                const ordersData = await fetchAdminOrders({ status: orderStatusFilter || undefined, q: searchTerm || undefined, limit: ordersLimit, offset: next });
                                                setOrders(ordersData);
                                            } catch {
                                                toast.error(t('Erreur de chargement', 'Failed to load'));
                                            }
                                        }}
                                        disabled={ordersOffset === 0}
                                        className="px-3 py-1.5 rounded-lg border border-gray-200 text-gray-700 font-semibold disabled:opacity-40"
                                    >
                                        {t('Précédent', 'Prev')}
                                    </button>
                                    <button
                                        onClick={async () => {
                                            const next = ordersOffset + ordersLimit;
                                            setOrdersOffset(next);
                                            try {
                                                const ordersData = await fetchAdminOrders({ status: orderStatusFilter || undefined, q: searchTerm || undefined, limit: ordersLimit, offset: next });
                                                setOrders(ordersData);
                                            } catch {
                                                toast.error(t('Erreur de chargement', 'Failed to load'));
                                            }
                                        }}
                                        className="px-3 py-1.5 rounded-lg border border-gray-200 text-gray-700 font-semibold"
                                    >
                                        {t('Suivant', 'Next')}
                                    </button>
                                </div>
                            </div>

                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium border-b border-gray-100">
                                    <tr>
                                        <th className="px-6 py-3">ID</th>
                                        <th className="px-6 py-3">Date</th>
                                        <th className="px-6 py-3">Client</th>
                                        <th className="px-6 py-3">Total</th>
                                        <th className="px-6 py-3">Statut</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-100">
                                    {orders
                                        .filter((o) => {
                                            if (!searchTerm) return true;
                                            const s = searchTerm.toLowerCase();
                                            return (
                                                String(o.id).toLowerCase().includes(s) ||
                                                String(o.user_email || '').toLowerCase().includes(s) ||
                                                String(o.user_clinic_name || '').toLowerCase().includes(s)
                                            );
                                        })
                                        .filter((o) => (orderStatusFilter ? o.status === orderStatusFilter : true))
                                        .map((order) => (
                                            <tr key={order.id} className="hover:bg-gray-50/50 cursor-pointer" onClick={() => openOrderModal(order)}>
                                                <td className="px-6 py-4 font-bold text-gray-900">#{order.id.toString().slice(0, 8)}</td>
                                                <td className="px-6 py-4 text-gray-500">{new Date(order.created_at).toLocaleString('fr-FR')}</td>
                                                <td className="px-6 py-4">
                                                    <div className="font-semibold text-gray-900">{order.user_clinic_name || t('Invité', 'Guest')}</div>
                                                    <div className="text-xs text-gray-400">{order.user_email || '-'}</div>
                                                </td>
                                                <td className="px-6 py-4 text-gray-900 font-bold">MAD {order.total_amount}</td>
                                                <td className="px-6 py-4" onClick={(e) => e.stopPropagation()}>
                                                    <select
                                                        value={order.status}
                                                        onChange={(e) => handleUpdateStatus(order.id, e.target.value)}
                                                        className="border border-gray-200 rounded-lg px-2 py-1 text-xs font-semibold text-gray-700 bg-white focus:outline-none focus:ring-2 focus:ring-medical-blue/20"
                                                    >
                                                        <option value="pending">{t('En attente', 'Pending')}</option>
                                                        <option value="processing">{t('Traitement', 'Processing')}</option>
                                                        <option value="shipped">{t('Expédiée', 'Shipped')}</option>
                                                        <option value="delivered">{t('Livrée', 'Delivered')}</option>
                                                        <option value="cancelled">{t('Annulée', 'Cancelled')}</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        ))}
                                </tbody>
                            </table>
                        </div>
                    )}

                    {activeTab === 'products' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <div className="px-6 py-4 border-b border-gray-200 flex justify-between items-center">
                                <h2 className="text-base font-semibold text-gray-900 tracking-tight">{t('Catalogue de Produits', 'Product Catalog')}</h2>
                                <button
                                    onClick={() => openProductModal()}
                                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-4 py-2 rounded-lg text-sm font-semibold flex items-center gap-2 transition-all shadow-md active:scale-95"
                                >
                                    <Plus className="w-4 h-4" /> {t('Nouveau Produit', 'New Product')}
                                </button>
                            </div>
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium border-b border-gray-100">
                                    <tr>
                                        <th className="px-6 py-3">{t('Produit', 'Product')}</th>
                                        <th className="px-6 py-3">{t('SKU', 'SKU')}</th>
                                        <th className="px-6 py-3">{t('Prix', 'Price')}</th>
                                        <th className="px-6 py-3 text-right">{t('Actions', 'Actions')}</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-100">
                                    {products.filter((p: any) => {
                                        const s = searchTerm.toLowerCase();
                                        if (!s) return true;
                                        return String(p.name || '').toLowerCase().includes(s) || String(p.sku || '').toLowerCase().includes(s);
                                    }).map((product: any) => (
                                        <tr key={product.id} className="hover:bg-gray-50/50 group">
                                            <td className="px-6 py-4">
                                                <div className="flex items-center gap-3">
                                                    {product.image_url ? (
                                                        <div className="relative w-10 h-10 bg-gray-50 rounded overflow-hidden flex-shrink-0">
                                                            <Image src={product.image_url} alt="" fill sizes="40px" className="object-contain" />
                                                        </div>
                                                    ) : (
                                                        <div className="w-10 h-10 bg-gray-50 rounded flex items-center justify-center flex-shrink-0">
                                                            <Package className="w-5 h-5 text-gray-400" />
                                                        </div>
                                                    )}
                                                    <div>
                                                        <div className="font-semibold text-gray-900 leading-none mb-1">{product.name}</div>
                                                        <div className="text-gray-400 text-xs">{product.category_name}</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td className="px-6 py-4 text-gray-500 font-mono text-xs">{product.sku}</td>
                                            <td className="px-6 py-4 text-gray-900 font-medium">MAD {product.base_unit_price}</td>
                                            <td className="px-6 py-4 text-right opacity-0 group-hover:opacity-100 transition-opacity">
                                                <button onClick={() => openProductModal(product)} className="p-1.5 text-gray-400 hover:text-medical-blue hover:bg-medical-blue/5 rounded-md">
                                                    <Edit2 className="w-4 h-4" />
                                                </button>
                                                <button onClick={() => handleDeleteProduct(product.id)} className="p-1.5 text-gray-400 hover:text-red-600 hover:bg-red-50 rounded-md ml-1">
                                                    <Trash2 className="w-4 h-4" />
                                                </button>
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                        </div>
                    )}

                    {selectedOrder && (
                        <div className="fixed inset-0 bg-black/60 backdrop-blur-sm z-[100] flex items-center justify-center p-4">
                            <div className="bg-white rounded-2xl shadow-2xl w-full max-w-xl overflow-hidden ring-1 ring-black/5 animate-in fade-in zoom-in duration-300">
                                <div className="px-8 py-6 border-b border-gray-100 flex justify-between items-center bg-gray-50/50">
                                    <div>
                                        <h3 className="text-xl font-bold text-gray-900">Détails de la Commande</h3>
                                        <p className="text-sm text-gray-400">#{selectedOrder.id}</p>
                                    </div>
                                    <button onClick={() => setSelectedOrder(null)} className="p-2 hover:bg-white rounded-full transition-colors group">
                                        <X className="w-5 h-5 text-gray-400 group-hover:text-gray-600" />
                                    </button>
                                </div>
                                <div className="p-8 space-y-6">
                                    {isLoadingOrderDetails && (
                                        <div className="text-sm text-gray-500">{t('Chargement...', 'Loading...')}</div>
                                    )}

                                    {!isLoadingOrderDetails && selectedOrderDetails && (
                                        <div className="space-y-6">
                                            <div className="grid grid-cols-2 gap-8">
                                                <div>
                                                    <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-1">{t('Client', 'Customer')}</div>
                                                    <div className="text-sm text-gray-900 font-medium">{selectedOrderDetails.user_clinic_name || t('Invité', 'Guest')}</div>
                                                    <div className="text-sm text-gray-500">{selectedOrderDetails.user_email || '-'}</div>
                                                </div>
                                                <div className="text-right">
                                                    <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-1">{t('Montant', 'Amount')}</div>
                                                    <div className="text-2xl font-black text-medical-blue">MAD {selectedOrderDetails.total_amount}</div>
                                                </div>
                                            </div>

                                            <div className="border border-gray-100 rounded-xl p-4 bg-gray-50/20">
                                                <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-3">{t('Livraison', 'Shipping')}</div>
                                                <div className="text-sm text-gray-900 font-medium">
                                                    {selectedOrderDetails.shipping_first_name || ''} {selectedOrderDetails.shipping_last_name || ''}
                                                </div>
                                                <div className="text-sm text-gray-500">{selectedOrderDetails.shipping_phone || '-'}</div>
                                                <div className="text-sm text-gray-500">{selectedOrderDetails.shipping_street_address || '-'}</div>
                                                <div className="text-sm text-gray-500">{selectedOrderDetails.shipping_city || 'Casablanca'} {selectedOrderDetails.shipping_zip_code || ''}</div>
                                            </div>

                                            <div className="border border-gray-100 rounded-xl p-4 bg-white">
                                                <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-3">{t('Articles', 'Items')}</div>
                                                <div className="space-y-2">
                                                    {(selectedOrderDetails.items || []).map((it: any) => (
                                                        <div key={it.id} className="flex items-start justify-between gap-4">
                                                            <div>
                                                                <div className="text-sm font-semibold text-gray-900">{it.name}</div>
                                                                <div className="text-xs text-gray-400 font-mono">{it.sku || ''}</div>
                                                                {it.selected_variant ? (
                                                                    <div className="text-xs text-gray-500">{t('Variante', 'Variant')}: {it.selected_variant}</div>
                                                                ) : null}
                                                            </div>
                                                            <div className="text-right">
                                                                <div className="text-sm text-gray-900 font-semibold">x{it.quantity}</div>
                                                                <div className="text-xs text-gray-500">MAD {it.price_per_unit_at_purchase}</div>
                                                            </div>
                                                        </div>
                                                    ))}
                                                </div>
                                            </div>
                                        </div>
                                    )}

                                    <div className="border border-gray-100 rounded-xl p-4 bg-gray-50/20">
                                        <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-3">Statut actuel</div>
                                        <div className="flex gap-2">
                                            {['pending', 'processing', 'shipped', 'delivered', 'cancelled'].map((s) => (
                                                <button
                                                    key={s}
                                                    onClick={() => handleUpdateStatus(selectedOrder.id, s)}
                                                    className={`flex-1 py-2 text-xs font-bold rounded-lg border transition-all ${selectedOrder.status === s
                                                        ? 'bg-medical-blue text-white border-medical-blue shadow-lg shadow-medical-blue/20'
                                                        : 'bg-white text-gray-400 border-gray-100 hover:border-gray-200'}`}
                                                >
                                                    {s.toUpperCase()}
                                                </button>
                                            ))}
                                        </div>
                                    </div>
                                </div>
                                <div className="px-8 py-6 bg-gray-50 flex justify-end">
                                    <button
                                        onClick={() => handleDownloadInvoicePdf(selectedOrder.id)}
                                        className="bg-white border border-gray-200 text-gray-900 px-6 py-2.5 rounded-xl text-sm font-bold shadow-sm hover:border-gray-300 transition-all flex items-center gap-2"
                                    >
                                        <FileText className="w-4 h-4" /> Télécharger Facture
                                    </button>
                                </div>
                            </div>
                        </div>
                    )}

                </div>

            {/* PRODUCT MODAL */}
            {isProductModalOpen && (
                <div className="fixed inset-0 bg-black/50 backdrop-blur-sm z-[100] flex items-center justify-center p-4">
                    <div className="bg-white rounded-3xl shadow-2xl w-full max-w-3xl max-h-[90vh] flex flex-col scale-in-center">
                        <div className="px-8 py-6 border-b border-gray-100 flex justify-between items-center shrink-0">
                            <div>
                                <h3 className="text-xl font-bold text-gray-900">{editingProduct ? 'Éditer le Catalogue' : 'Nouveau Dispositif Médical'}</h3>
                                <p className="text-sm text-gray-400">Saisie des données cliniques pour D1 Edge</p>
                            </div>
                            <button onClick={() => setIsProductModalOpen(false)} className="p-2 hover:bg-gray-100 rounded-full transition-colors"><X className="w-5 h-5 text-gray-400" /></button>
                        </div>
                        <form onSubmit={handleSaveProduct} className="p-8 space-y-6 overflow-y-auto custom-scrollbar">
                            <div className="grid grid-cols-6 gap-6">
                                <div className="col-span-3">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Nom Commercial (FR)</label>
                                    <input required type="text" value={productForm.name} onChange={e => setProductForm({ ...productForm, name: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm focus:ring-4 focus:ring-medical-blue/10 focus:border-medical-blue transition-all" placeholder="Ex: Kit de Péridurale" />
                                </div>
                                <div className="col-span-3">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Nom Commercial (EN)</label>
                                    <input type="text" value={productForm.name_en} onChange={e => setProductForm({ ...productForm, name_en: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm focus:ring-4 focus:ring-medical-blue/10 focus:border-medical-blue transition-all" placeholder="Ex: Epidural Kit" />
                                </div>
                                <div className="col-span-2">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">SKU Unique</label>
                                    <input required type="text" value={productForm.sku} onChange={e => setProductForm({ ...productForm, sku: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-mono" placeholder="SKU-XXXXX" />
                                </div>

                                <div className="col-span-2">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Prix Unité (MAD)</label>
                                    <input required type="number" step="0.01" value={productForm.base_unit_price} onChange={e => setProductForm({ ...productForm, base_unit_price: parseFloat(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold text-medical-blue" />
                                </div>
                                <div className="col-span-2">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Quantité Stock</label>
                                    <input required type="number" value={productForm.stock} onChange={e => setProductForm({ ...productForm, stock: parseInt(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm" />
                                </div>
                                <div className="col-span-2">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Conditionnement</label>
                                    <input required type="text" value={productForm.packaging_type} onChange={e => setProductForm({ ...productForm, packaging_type: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm" placeholder="Ex: Boîte de 100" />
                                </div>

                                <div className="col-span-3">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Catégorie</label>
                                    <select value={productForm.category_id} onChange={e => setProductForm({ ...productForm, category_id: parseInt(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm focus:ring-4 focus:ring-medical-blue/10">
                                        {categories.map(c => <option key={c.id} value={c.id}>{c.name}</option>)}
                                    </select>
                                </div>
                                <div className="col-span-3">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Marque Partner</label>
                                    <select value={productForm.brand_id} onChange={e => setProductForm({ ...productForm, brand_id: parseInt(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm focus:ring-4 focus:ring-medical-blue/10">
                                        {brands.map(b => <option key={b.id} value={b.id}>{b.name}</option>)}
                                    </select>
                                </div>

                                <div className="col-span-6">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Images Asset URL (Sourcing Clinique)</label>
                                    <input required type="text" value={productForm.image_url} onChange={e => setProductForm({ ...productForm, image_url: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm text-gray-500 italic" />
                                </div>

                                <div className="col-span-6">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Fiche Technique (JSON Builder)</label>
                                    <textarea required rows={4} value={productForm.specifications} onChange={e => setProductForm({ ...productForm, specifications: e.target.value })} className="w-full bg-slate-900 border border-slate-800 text-emerald-400 rounded-xl px-4 py-3 text-xs font-mono"></textarea>
                                </div>

                                <div className="col-span-6">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Description (FR)</label>
                                    <textarea rows={3} value={productForm.description} onChange={e => setProductForm({ ...productForm, description: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm"></textarea>
                                </div>
                                <div className="col-span-6">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Description (EN)</label>
                                    <textarea rows={3} value={productForm.description_en} onChange={e => setProductForm({ ...productForm, description_en: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm"></textarea>
                                </div>
                            </div>

                            <div className="pt-8 flex justify-end gap-4 sticky bottom-0 bg-white">
                                <button type="button" onClick={() => setIsProductModalOpen(false)} className="px-8 py-3 bg-gray-100 text-gray-500 rounded-2xl text-sm font-bold hover:bg-gray-200 transition-all">Annuler</button>
                                <button type="submit" className="px-8 py-3 bg-medical-blue text-white rounded-2xl text-sm font-bold shadow-xl shadow-medical-blue/20 hover:scale-105 active:scale-95 transition-all">Sauvegarder</button>
                            </div>
                        </form>
                    </div>
                </div>
            )}
            {/* BRAND MODAL */}
            {isBrandModalOpen && (
                <div className="fixed inset-0 bg-black/50 backdrop-blur-sm z-[101] flex items-center justify-center p-4">
                    <div className="bg-white rounded-3xl shadow-2xl w-full max-w-xl scale-in-center">
                        <div className="px-8 py-6 border-b border-gray-100 flex justify-between items-center">
                            <h3 className="text-xl font-bold text-gray-900">{editingBrand ? 'Éditer la Marque' : 'Nouvelle Marque'}</h3>
                            <button onClick={() => setIsBrandModalOpen(false)} className="p-2 hover:bg-gray-100 rounded-full transition-colors"><X className="w-5 h-5 text-gray-400" /></button>
                        </div>
                        <form onSubmit={handleSaveBrand} className="p-8 space-y-6">
                            <div className="space-y-4">
                                <div>
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5">Nom de la Marque</label>
                                    <input required type="text" value={brandForm.name} onChange={e => setBrandForm({ ...brandForm, name: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm" />
                                </div>
                                <div>
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5">Manufacturer (Entité Légale)</label>
                                    <input type="text" value={brandForm.manufacturer} onChange={e => setBrandForm({ ...brandForm, manufacturer: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm" placeholder="Ex: GreatCare Medical Ltd." />
                                </div>
                                <div>
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5">Logo URL</label>
                                    <input type="text" value={brandForm.logo_url} onChange={e => setBrandForm({ ...brandForm, logo_url: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm" placeholder="https://..." />
                                </div>
                                <div>
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5">CE Certificate URL</label>
                                    <input type="text" value={brandForm.ce_certificate_url} onChange={e => setBrandForm({ ...brandForm, ce_certificate_url: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm" placeholder="https://..." />
                                </div>
                                <div>
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5">Notes internes</label>
                                    <textarea rows={2} value={brandForm.notes} onChange={e => setBrandForm({ ...brandForm, notes: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm"></textarea>
                                </div>
                            </div>
                            <div className="pt-4 flex justify-end gap-3">
                                <button type="button" onClick={() => setIsBrandModalOpen(false)} className="px-6 py-2.5 bg-gray-100 text-gray-500 rounded-xl text-sm font-bold">Annuler</button>
                                <button
                                    type="submit"
                                    disabled={isCreatingBrand}
                                    className="px-6 py-2.5 bg-medical-blue text-white rounded-xl text-sm font-bold shadow-lg shadow-medical-blue/20 disabled:opacity-50"
                                >
                                    {editingBrand ? 'Mettre à jour' : 'Créer'}
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            )}

            {/* REJECT MODAL */}
            {isRejectModalOpen && (
                <div className="fixed inset-0 bg-black/60 backdrop-blur-sm z-[110] flex items-center justify-center p-4">
                    <div className="bg-white rounded-2xl shadow-2xl w-full max-w-md overflow-hidden animate-in fade-in zoom-in duration-300">
                        <div className="px-6 py-4 border-b border-gray-100 flex justify-between items-center">
                            <h3 className="text-lg font-bold text-gray-900">Refuser l'Utilisateur</h3>
                            <button onClick={() => setIsRejectModalOpen(false)} className="p-2 hover:bg-gray-100 rounded-full transition-colors"><X className="w-5 h-5 text-gray-400" /></button>
                        </div>
                        <div className="p-6 space-y-4">
                            <p className="text-sm text-gray-500">
                                Veuillez indiquer le motif du refus pour <strong>{userToReject?.full_name}</strong>. Ce motif lui sera envoyé par email.
                            </p>
                            <textarea
                                value={rejectionReason}
                                onChange={(e) => setRejectionReason(e.target.value)}
                                className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-3 text-sm focus:ring-2 focus:ring-red-500/20 focus:border-red-500 outline-none transition-all"
                                rows={4}
                                placeholder="Ex: Licence périmée, Numéro INPE invalide..."
                            />
                        </div>
                        <div className="px-6 py-4 bg-gray-50 flex justify-end gap-3">
                            <button onClick={() => setIsRejectModalOpen(false)} className="px-4 py-2 text-sm font-medium text-gray-500 hover:text-gray-700">Annuler</button>
                            <button
                                onClick={handleRejectUser}
                                disabled={!rejectionReason}
                                className="bg-red-600 hover:bg-red-700 text-white px-6 py-2 rounded-xl text-sm font-bold shadow-lg shadow-red-600/20 transition-all disabled:opacity-50"
                            >
                                Confirmer le Refus
                            </button>
                        </div>
                    </div>
                </div>
            )}
            </main>
        </div>
    );
}
