'use client';

import React, { useState, useEffect } from 'react';
import Image from 'next/image';
import {
    LayoutDashboard, ShoppingCart, Users, TrendingUp, Search, Filter,
    CheckCircle2, Clock, Package, ChevronDown, Plus, Edit2, Trash2, X, FileText, Settings, Save, ShieldCheck,
    FileSearch,
    LogOut,
    Eye
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

// New Modular Components
import AdminSidebar from './components/AdminSidebar';
import StatCards from './components/StatCards';
import OrdersTab from './components/OrdersTab';
import ProductsTab from './components/ProductsTab';
import CustomersTab from './components/CustomersTab';
import BrandsTab from './components/BrandsTab';
import SettingsTab from './components/SettingsTab';

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
        <div className="min-h-screen bg-[#f8fafc] flex font-sans text-gray-900 selection:bg-medical-blue/10">
            <AdminSidebar activeTab={activeTab} setActiveTab={setActiveTab} />

            <main className="flex-1 ml-64 p-8 xl:p-12 transition-all duration-500">
                {/* Modern Header */}
                <header className="flex flex-col md:flex-row md:items-center justify-between gap-6 mb-12">
                    <div>
                        <div className="flex items-center gap-2 text-[10px] font-black text-medical-blue uppercase tracking-[0.2em] mb-2">
                            <div className="w-8 h-[2px] bg-medical-blue/20" />
                            Admin Control Center
                        </div>
                        <h1 className="text-4xl font-black text-gray-900 tracking-tight capitalize">
                            {activeTab === 'dashboard' ? t('Aperçu Global', 'Global Overview') : activeTab}
                        </h1>
                    </div>

                    <div className="flex items-center gap-4 bg-white p-2 rounded-2xl shadow-sm border border-gray-100">
                        <div className="flex items-center gap-2 px-4 border-r border-gray-100">
                            <div className="w-2 h-2 bg-emerald-500 rounded-full" />
                            <span className="text-xs font-bold text-gray-500 uppercase tracking-wider">{t('Connecté', 'Online')}</span>
                        </div>
                        <button
                            onClick={loadAdminData}
                            className="p-2.5 text-gray-400 hover:text-medical-blue hover:bg-medical-blue/5 rounded-xl transition-all"
                            title="Reload Data"
                        >
                            <Clock className="w-5 h-5" />
                        </button>
                        <div className="w-10 h-10 bg-gradient-to-tr from-gray-100 to-gray-50 rounded-xl flex items-center justify-center text-sm font-black text-gray-400 border border-gray-200">
                            AD
                        </div>
                    </div>
                </header>

                <div className="max-w-[1600px] mx-auto space-y-10 animate-in fade-in slide-in-from-bottom-4 duration-700">

                    {activeTab === 'dashboard' && (
                        <div className="space-y-10">
                            <StatCards
                                usersCount={users.length}
                                ordersCount={adminSummary?.stats?.count ?? orders.length}
                                productsCount={products.length}
                                revenue={`MAD ${Number(adminSummary?.stats?.total || 0).toLocaleString()}`}
                            />

                            <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                                <div className="lg:col-span-2">
                                    <div className="bg-white rounded-3xl shadow-sm border border-gray-100 overflow-hidden">
                                        <div className="px-8 py-6 border-b border-gray-50 flex items-center justify-between">
                                            <h2 className="text-lg font-black text-gray-900 tracking-tight">{t('Commandes Récentes', 'Recent Orders')}</h2>
                                            <button onClick={() => setActiveTab('orders')} className="text-xs font-black text-medical-blue uppercase tracking-widest hover:underline decoration-2 underline-offset-4">
                                                View All
                                            </button>
                                        </div>
                                        <div className="overflow-x-auto">
                                            <table className="w-full text-left">
                                                <thead className="bg-gray-50/50 text-[10px] font-black text-gray-400 uppercase tracking-widest border-b border-gray-50">
                                                    <tr>
                                                        <th className="px-8 py-4">ID</th>
                                                        <th className="px-8 py-4">Customer</th>
                                                        <th className="px-8 py-4">Total</th>
                                                        <th className="px-8 py-4">Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody className="divide-y divide-gray-50">
                                                    {(adminSummary?.recent_orders || orders.slice(0, 5)).map((order: any) => (
                                                        <tr
                                                            key={order.id}
                                                            className="hover:bg-gray-50/50 cursor-pointer transition-colors"
                                                            onClick={() => openOrderModal(order)}
                                                        >
                                                            <td className="px-8 py-5 font-mono font-bold text-gray-900">#{order.id.toString().slice(0, 6)}</td>
                                                            <td className="px-8 py-5">
                                                                <div className="font-bold text-gray-900 text-sm">{order.user_clinic_name || 'Guest'}</div>
                                                                <div className="text-[10px] text-gray-400 font-medium">{new Date(order.created_at).toLocaleDateString()}</div>
                                                            </td>
                                                            <td className="px-8 py-5 font-black text-gray-900">MAD {order.total_amount}</td>
                                                            <td className="px-8 py-5">
                                                                <span className={`px-3 py-1 rounded-lg text-[10px] font-black uppercase tracking-widest border ${order.status === 'pending' ? 'bg-amber-50 text-amber-700 border-amber-100' :
                                                                    order.status === 'delivered' ? 'bg-emerald-50 text-emerald-700 border-emerald-100' :
                                                                        'bg-blue-50 text-blue-700 border-blue-100'
                                                                    }`}>
                                                                    {order.status}
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    ))}
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div className="space-y-8">
                                    <div className="bg-gradient-to-br from-medical-blue to-blue-700 rounded-3xl p-8 text-white shadow-xl shadow-medical-blue/20">
                                        <div className="flex items-center gap-3 mb-6">
                                            <div className="p-2 bg-white/10 rounded-xl backdrop-blur-md">
                                                <FileSearch className="w-6 h-6" />
                                            </div>
                                            <div className="text-xs font-black uppercase tracking-[0.2em] opacity-80">{t('Vérifications', 'Verifications')}</div>
                                        </div>
                                        <div className="text-5xl font-black mb-2 tracking-tighter">{adminSummary?.pending_verifications ?? 0}</div>
                                        <p className="text-sm font-medium opacity-70 italic">{t('Comptes pratiticiens en attente de revue clinique.', 'Practitioner accounts awaiting clinical review.')}</p>
                                        <button
                                            onClick={() => setActiveTab('customers')}
                                            className="mt-8 w-full py-4 bg-white text-medical-blue rounded-2xl font-black text-sm shadow-lg hover:scale-[1.02] active:scale-[0.98] transition-all"
                                        >
                                            Process Queue
                                        </button>
                                    </div>

                                    <div className="bg-white rounded-3xl p-8 border border-gray-100 shadow-sm">
                                        <div className="flex items-center gap-3 mb-6">
                                            <div className="p-2 bg-rose-50 rounded-xl">
                                                <Package className="w-6 h-6 text-rose-500" />
                                            </div>
                                            <div className="text-xs font-black text-rose-400 uppercase tracking-[0.2em]">{t('Stock critique', 'Low stock')}</div>
                                        </div>
                                        <div className="text-5xl font-black text-gray-900 mb-2 tracking-tighter">{adminSummary?.low_stock_count ?? 0}</div>
                                        <p className="text-sm font-medium text-gray-400 italic">{t('Produits avec moins de 5 unités en inventaire.', 'Products with fewer than 5 units in inventory.')}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    )}

                    {activeTab === 'orders' && (
                        <OrdersTab
                            orders={orders}
                            searchTerm={searchTerm}
                            setSearchTerm={setSearchTerm}
                            orderStatusFilter={orderStatusFilter}
                            setOrderStatusFilter={setOrderStatusFilter}
                            ordersLimit={ordersLimit}
                            setOrdersLimit={setOrdersLimit}
                            ordersOffset={ordersOffset}
                            setOrdersOffset={setOrdersOffset}
                            handleUpdateStatus={handleUpdateStatus}
                            openOrderModal={openOrderModal}
                            handleApplyFilters={async () => {
                                const data = await fetchAdminOrders({ status: orderStatusFilter || undefined, q: searchTerm || undefined, limit: ordersLimit, offset: 0 });
                                setOrders(data);
                                setOrdersOffset(0);
                            }}
                            handlePageChange={async (next) => {
                                setOrdersOffset(next);
                                const data = await fetchAdminOrders({ status: orderStatusFilter || undefined, q: searchTerm || undefined, limit: ordersLimit, offset: next });
                                setOrders(data);
                            }}
                        />
                    )}

                    {activeTab === 'customers' && (
                        <CustomersTab
                            users={users}
                            searchTerm={searchTerm}
                            setSearchTerm={setSearchTerm}
                            customerStatusFilter={customerStatusFilter}
                            setCustomerStatusFilter={setCustomerStatusFilter}
                            handleVerifyUser={handleVerifyUser}
                            handleDownloadLicense={handleDownloadLicense}
                            setUserToReject={setUserToReject}
                            setIsRejectModalOpen={setIsRejectModalOpen}
                            handleRefreshUsers={async () => {
                                const data = await fetchAdminUsers();
                                setUsers(data);
                            }}
                        />
                    )}

                    {activeTab === 'products' && (
                        <ProductsTab
                            products={products}
                            searchTerm={searchTerm}
                            setSearchTerm={setSearchTerm}
                            openProductModal={(p) => {
                                setEditingProduct(p);
                                if (p) {
                                    setProductForm({
                                        name: p.name || '',
                                        name_en: p.name_en || '',
                                        sku: p.sku || '',
                                        base_unit_price: p.base_unit_price || 0,
                                        stock: p.stock_quantity || 0,
                                        description: p.description || '',
                                        description_en: p.description_en || '',
                                        image_url: p.image_url || '',
                                        category_id: p.category_id || 1,
                                        brand_id: p.brand_id || 1,
                                        specifications: typeof p.specifications === 'string' ? p.specifications : JSON.stringify(p.specifications || {}, null, 2),
                                        packaging_type: p.packaging_type || 'Unité'
                                    });
                                } else {
                                    setProductForm({
                                        name: '', name_en: '', sku: '', base_unit_price: 0, stock: 100,
                                        description: '', description_en: '', image_url: '',
                                        category_id: 1, brand_id: 1, specifications: '{}', packaging_type: 'Unité'
                                    });
                                }
                                setIsProductModalOpen(true);
                            }}
                            handleDeleteProduct={handleDeleteProduct}
                        />
                    )}

                    {activeTab === 'brands' && (
                        <BrandsTab
                            brands={brands}
                            searchTerm={searchTerm}
                            openBrandModal={(b) => {
                                setEditingBrand(b);
                                if (b) {
                                    setBrandForm({
                                        name: b.name || '',
                                        logo_url: b.logo_url || '',
                                        manufacturer: b.manufacturer || '',
                                        notes: b.notes || '',
                                        ce_certificate_url: b.ce_certificate_url || ''
                                    });
                                } else {
                                    setBrandForm({ name: '', logo_url: '', manufacturer: '', notes: '', ce_certificate_url: '' });
                                }
                                setIsBrandModalOpen(true);
                            }}
                            handleDeleteBrand={handleDeleteBrand}
                        />
                    )}

                    {activeTab === 'settings' && (
                        <SettingsTab
                            settings={settings}
                            setSettings={setSettings}
                            handleSaveSettings={handleSaveSettings}
                            isSavingSettings={isSavingSettings}
                        />
                    )}
                </div>

                {/* MODALS SECTION */}
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
                            <div className="p-8 space-y-6 overflow-y-auto max-h-[70vh]">
                                {isLoadingOrderDetails && (
                                    <div className="flex items-center justify-center py-10">
                                        <div className="w-8 h-8 border-3 border-medical-blue/20 border-t-medical-blue rounded-full animate-spin" />
                                    </div>
                                )}

                                {!isLoadingOrderDetails && selectedOrderDetails && (
                                    <div className="space-y-6">
                                        <div className="grid grid-cols-2 gap-8">
                                            <div>
                                                <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-1">{t('Client', 'Customer')}</div>
                                                <div className="text-sm text-gray-900 font-bold">{selectedOrderDetails.user_clinic_name || t('Invité', 'Guest')}</div>
                                                <div className="text-sm text-gray-500">{selectedOrderDetails.user_email || '-'}</div>
                                            </div>
                                            <div className="text-right">
                                                <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-1">{t('Montant H.T', 'Amount Excl. Tax')}</div>
                                                <div className="text-2xl font-black text-medical-blue">MAD {selectedOrderDetails.total_amount}</div>
                                            </div>
                                        </div>

                                        <div className="border border-gray-100 rounded-xl p-4 bg-gray-50/20">
                                            <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-3">{t('Livraison', 'Shipping')}</div>
                                            <div className="text-sm text-gray-900 font-bold">
                                                {selectedOrderDetails.shipping_first_name || ''} {selectedOrderDetails.shipping_last_name || ''}
                                            </div>
                                            <div className="text-sm text-gray-500">{selectedOrderDetails.shipping_phone || '-'}</div>
                                            <div className="text-sm text-gray-500">{selectedOrderDetails.shipping_street_address || '-'}</div>
                                            <div className="text-sm text-gray-500 font-bold">{selectedOrderDetails.shipping_city || 'Casablanca'} {selectedOrderDetails.shipping_zip_code || ''}</div>
                                        </div>

                                        <div className="border border-gray-100 rounded-xl p-4 bg-white shadow-sm">
                                            <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-3">{t('Articles', 'Items')}</div>
                                            <div className="space-y-4">
                                                {(selectedOrderDetails.items || []).map((it: any) => (
                                                    <div key={it.id} className="flex items-start justify-between gap-4 pb-4 border-b border-gray-50 last:border-0 last:pb-0">
                                                        <div>
                                                            <div className="text-sm font-bold text-gray-900">{it.name}</div>
                                                            <div className="text-[10px] text-gray-400 font-mono mt-0.5">{it.sku || ''}</div>
                                                            {it.selected_variant ? (
                                                                <div className="text-xs text-medical-blue font-bold mt-1 bg-medical-blue/5 inline-block px-2 py-0.5 rounded">{t('Variante', 'Variant')}: {it.selected_variant}</div>
                                                            ) : null}
                                                        </div>
                                                        <div className="text-right">
                                                            <div className="text-sm text-gray-900 font-black">x{it.quantity}</div>
                                                            <div className="text-xs text-gray-500 font-bold">MAD {it.price_per_unit_at_purchase}</div>
                                                        </div>
                                                    </div>
                                                ))}
                                            </div>
                                        </div>
                                    </div>
                                )}

                                <div className="border border-gray-100 rounded-xl p-5 bg-gray-900 text-white shadow-xl">
                                    <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-4 flex items-center gap-2">
                                        <div className="w-1.5 h-1.5 bg-yellow-400 rounded-full animate-pulse" />
                                        Mise à jour du Statut
                                    </div>
                                    <div className="grid grid-cols-2 gap-2">
                                        {['pending', 'processing', 'shipped', 'delivered', 'cancelled'].map((s) => (
                                            <button
                                                key={s}
                                                onClick={() => handleUpdateStatus(selectedOrder.id, s)}
                                                className={`py-2.5 text-[10px] font-black rounded-lg border uppercase tracking-wider transition-all ${selectedOrder.status === s
                                                    ? 'bg-white text-gray-900 border-white shadow-lg'
                                                    : 'bg-gray-800 text-gray-400 border-gray-700 hover:border-gray-500 hover:text-white'}`}
                                            >
                                                {s}
                                            </button>
                                        ))}
                                    </div>
                                </div>
                            </div>
                            <div className="px-8 py-6 bg-gray-50 border-t border-gray-100 flex justify-between items-center">
                                <button
                                    onClick={() => handleDownloadInvoicePdf(selectedOrder.id)}
                                    className="bg-white border border-gray-200 text-gray-900 px-6 py-3 rounded-2xl text-xs font-black shadow-sm hover:border-gray-300 transition-all flex items-center gap-2 active:scale-95"
                                >
                                    <FileText className="w-4 h-4 text-medical-blue" /> Télécharger Facture
                                </button>
                                <button
                                    onClick={() => setSelectedOrder(null)}
                                    className="px-6 py-3 bg-gray-200 text-gray-600 rounded-2xl text-xs font-black hover:bg-gray-300 transition-all"
                                >
                                    Fermer
                                </button>
                            </div>
                        </div>
                    </div>
                )}

                {/* PRODUCT MODAL */}
                {isProductModalOpen && (
                    <div className="fixed inset-0 bg-black/50 backdrop-blur-sm z-[100] flex items-center justify-center p-4">
                        <div className="bg-white rounded-3xl shadow-2xl w-full max-w-3xl max-h-[90vh] flex flex-col animate-in zoom-in fade-in duration-300">
                            <div className="px-8 py-6 border-b border-gray-100 flex justify-between items-center shrink-0">
                                <div>
                                    <h3 className="text-xl font-black text-gray-900 tracking-tight">{editingProduct ? 'Éditer le Catalogue' : 'Nouveau Dispositif Médical'}</h3>
                                    <p className="text-xs font-bold text-gray-400 uppercase tracking-widest mt-0.5">Saisie des données cliniques pour D1 Edge</p>
                                </div>
                                <button onClick={() => setIsProductModalOpen(false)} className="p-2 hover:bg-gray-100 rounded-full transition-colors"><X className="w-5 h-5 text-gray-400" /></button>
                            </div>
                            <form onSubmit={handleSaveProduct} className="p-8 space-y-8 overflow-y-auto custom-scrollbar">
                                <div className="grid grid-cols-6 gap-6">
                                    <div className="col-span-3">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Nom Commercial (FR)</label>
                                        <input required type="text" value={productForm.name} onChange={e => setProductForm({ ...productForm, name: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold focus:ring-4 focus:ring-medical-blue/10 focus:border-medical-blue transition-all" />
                                    </div>
                                    <div className="col-span-3">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Nom Commercial (EN)</label>
                                        <input type="text" value={productForm.name_en} onChange={e => setProductForm({ ...productForm, name_en: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold focus:ring-4 focus:ring-medical-blue/10 focus:border-medical-blue transition-all" />
                                    </div>
                                    <div className="col-span-2">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">SKU Unique</label>
                                        <input required type="text" value={productForm.sku} onChange={e => setProductForm({ ...productForm, sku: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-mono font-bold" />
                                    </div>

                                    <div className="col-span-2">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Prix Unité (MAD)</label>
                                        <input required type="number" step="0.01" value={productForm.base_unit_price} onChange={e => setProductForm({ ...productForm, base_unit_price: parseFloat(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-black text-emerald-600" />
                                    </div>
                                    <div className="col-span-2">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Quantité Stock</label>
                                        <input required type="number" value={productForm.stock} onChange={e => setProductForm({ ...productForm, stock: parseInt(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold" />
                                    </div>
                                    <div className="col-span-2">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Conditionnement</label>
                                        <input required type="text" value={productForm.packaging_type} onChange={e => setProductForm({ ...productForm, packaging_type: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm" placeholder="Ex: Boîte de 100" />
                                    </div>

                                    <div className="col-span-2">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Catégorie</label>
                                        <select value={productForm.category_id} onChange={e => setProductForm({ ...productForm, category_id: parseInt(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold">
                                            {categories.map(c => <option key={c.id} value={c.id}>{c.name}</option>)}
                                        </select>
                                    </div>
                                    <div className="col-span-2">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Marque Partner</label>
                                        <select value={productForm.brand_id} onChange={e => setProductForm({ ...productForm, brand_id: parseInt(e.target.value) })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold">
                                            {brands.map(b => <option key={b.id} value={b.id}>{b.name}</option>)}
                                        </select>
                                    </div>

                                    <div className="col-span-6">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Images Asset URL</label>
                                        <input required type="text" value={productForm.image_url} onChange={e => setProductForm({ ...productForm, image_url: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-mono italic text-gray-400" />
                                    </div>

                                    <div className="col-span-6">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Spécifications (JSON)</label>
                                        <textarea required rows={5} value={productForm.specifications} onChange={e => setProductForm({ ...productForm, specifications: e.target.value })} className="w-full bg-slate-900 border border-slate-800 text-emerald-400 rounded-xl px-4 py-3 text-xs font-mono shadow-inner"></textarea>
                                    </div>

                                    <div className="col-span-3">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Description (FR)</label>
                                        <textarea rows={3} value={productForm.description} onChange={e => setProductForm({ ...productForm, description: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm"></textarea>
                                    </div>
                                    <div className="col-span-3">
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Description (EN)</label>
                                        <textarea rows={3} value={productForm.description_en} onChange={e => setProductForm({ ...productForm, description_en: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm"></textarea>
                                    </div>
                                </div>

                                <div className="pt-4 flex justify-end gap-4 sticky bottom-0 bg-white border-t border-gray-50 pt-6">
                                    <button type="button" onClick={() => setIsProductModalOpen(false)} className="px-8 py-4 bg-gray-100 text-gray-500 rounded-2xl text-xs font-black uppercase tracking-widest hover:bg-gray-200 transition-all">Annuler</button>
                                    <button type="submit" className="px-10 py-4 bg-medical-blue text-white rounded-2xl text-xs font-black uppercase tracking-widest shadow-xl shadow-medical-blue/20 hover:scale-105 active:scale-95 transition-all">
                                        {editingProduct ? 'Mettre à jour' : 'Enregistrer le Produit'}
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                )}

                {/* BRAND MODAL */}
                {isBrandModalOpen && (
                    <div className="fixed inset-0 bg-black/50 backdrop-blur-sm z-[101] flex items-center justify-center p-4">
                        <div className="bg-white rounded-3xl shadow-2xl w-full max-w-xl animate-in zoom-in fade-in duration-300">
                            <div className="px-8 py-6 border-b border-gray-100 flex justify-between items-center">
                                <h3 className="text-xl font-black text-gray-900 tracking-tight">{editingBrand ? 'Éditer la Marque' : 'Nouvelle Marque'}</h3>
                                <button onClick={() => setIsBrandModalOpen(false)} className="p-2 hover:bg-gray-100 rounded-full transition-colors"><X className="w-5 h-5 text-gray-400" /></button>
                            </div>
                            <form onSubmit={handleSaveBrand} className="p-8 space-y-6">
                                <div className="space-y-4">
                                    <div>
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5">Nom de la Marque</label>
                                        <input required type="text" value={brandForm.name} onChange={e => setBrandForm({ ...brandForm, name: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold" />
                                    </div>
                                    <div>
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5">Fabricant (Entité Légale)</label>
                                        <input type="text" value={brandForm.manufacturer} onChange={e => setBrandForm({ ...brandForm, manufacturer: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-bold" />
                                    </div>
                                    <div>
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5">Logo URL</label>
                                        <input type="text" value={brandForm.logo_url} onChange={e => setBrandForm({ ...brandForm, logo_url: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-mono text-gray-400" />
                                    </div>
                                    <div>
                                        <label className="block text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1.5">Certificat CE URL</label>
                                        <input type="text" value={brandForm.ce_certificate_url} onChange={e => setBrandForm({ ...brandForm, ce_certificate_url: e.target.value })} className="w-full bg-gray-50 border border-gray-100 rounded-xl px-4 py-3 text-sm font-mono text-gray-400" />
                                    </div>
                                </div>
                                <div className="pt-4 flex justify-end gap-3">
                                    <button type="button" onClick={() => setIsBrandModalOpen(false)} className="px-6 py-3 bg-gray-100 text-gray-500 rounded-xl text-xs font-black uppercase tracking-widest">Annuler</button>
                                    <button
                                        type="submit"
                                        disabled={isCreatingBrand}
                                        className="px-8 py-3 bg-medical-blue text-white rounded-xl text-xs font-black uppercase tracking-widest shadow-lg shadow-medical-blue/20 disabled:opacity-50 active:scale-95 transition-all"
                                    >
                                        {editingBrand ? 'Mettre à jour' : 'Créer la Marque'}
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
                            <div className="px-8 py-6 border-b border-gray-100 flex justify-between items-center bg-rose-50/50">
                                <h3 className="text-lg font-black text-rose-900 tracking-tight">Refuser la Certification</h3>
                                <button onClick={() => setIsRejectModalOpen(false)} className="p-2 hover:bg-rose-100 rounded-full transition-colors"><X className="w-5 h-5 text-rose-400" /></button>
                            </div>
                            <div className="p-8 space-y-4">
                                <p className="text-sm font-medium text-gray-600 leading-relaxed">
                                    Veuillez indiquer le motif clinique ou administratif du refus pour <span className="font-black text-gray-900">{userToReject?.full_name || userToReject?.clinic_name}</span>.
                                    Une notification sera envoyée automatiquement.
                                </p>
                                <textarea
                                    value={rejectionReason}
                                    onChange={(e) => setRejectionReason(e.target.value)}
                                    className="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-4 text-sm font-bold focus:ring-4 focus:ring-rose-500/10 focus:border-rose-500 outline-none transition-all shadow-inner"
                                    rows={4}
                                    placeholder="Ex: Document INPE non valide, Photo floue..."
                                />
                            </div>
                            <div className="px-8 py-6 bg-gray-50 border-t border-gray-100 flex justify-end gap-3">
                                <button onClick={() => setIsRejectModalOpen(false)} className="px-4 py-2 text-xs font-black text-gray-400 uppercase tracking-widest hover:text-gray-600 transition-colors">Annuler</button>
                                <button
                                    onClick={handleRejectUser}
                                    disabled={!rejectionReason || isSavingSettings}
                                    className="bg-rose-600 hover:bg-rose-700 text-white px-8 py-3 rounded-2xl text-xs font-black uppercase tracking-widest shadow-xl shadow-rose-600/20 transition-all disabled:opacity-50 active:scale-95"
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

