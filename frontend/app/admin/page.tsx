'use client';

import React, { useState, useEffect } from 'react';
import Image from 'next/image';
import {
    LayoutDashboard, ShoppingCart, Users, TrendingUp, Search, Filter,
    CheckCircle2, Clock, Package, ChevronDown, Plus, Edit2, Trash2, X, FileText, ShieldCheck
} from 'lucide-react';
import {
    fetchAdminOrders,
    fetchAdminUsers,
    fetchProducts,
    updateOrderStatus,
    verifyUser,
    createProduct,
    updateProduct,
    deleteProduct,
    fetchCategories,
    fetchBrands,
    updateBrand,
    fetchAdminStats
} from '@/app/lib/api';
import { toast } from 'react-hot-toast';

type TabType = 'dashboard' | 'orders' | 'products' | 'customers' | 'brands' | 'settings';

export default function AdminDashboard() {
    const [orders, setOrders] = useState<any[]>([]);
    const [users, setUsers] = useState<any[]>([]);
    const [products, setProducts] = useState<any[]>([]);
    const [categories, setCategories] = useState<any[]>([]);
    const [brands, setBrands] = useState<any[]>([]);
    const [loading, setLoading] = useState(true);
    const [activeTab, setActiveTab] = useState<TabType>('dashboard');
    const [searchTerm, setSearchTerm] = useState('');
    const [dashboardStats, setDashboardStats] = useState<any>({ count: 0, total: 0 });

    // Product Modal State
    const [isProductModalOpen, setIsProductModalOpen] = useState(false);
    const [editingProduct, setEditingProduct] = useState<any | null>(null);
    const [productForm, setProductForm] = useState<any>({ name: '', sku: '', base_unit_price: 0, stock: 100, description: '', image_url: '', category_id: 1, brand_id: 1, specifications: '{}', packaging_type: 'Unité' });

    // Brand Modal State
    const [isBrandModalOpen, setIsBrandModalOpen] = useState(false);
    const [editingBrand, setEditingBrand] = useState<any | null>(null);
    const [brandForm, setBrandForm] = useState<any>({ name: '', logo_url: '', manufacturer: '', notes: '', ce_certificate_url: '' });

    // Order View State
    const [selectedOrder, setSelectedOrder] = useState<any | null>(null);

    useEffect(() => {
        loadAdminData();
    }, []);

    async function loadAdminData() {
        setLoading(true);
        try {
            const [ordersData, usersData, productsData, categoriesData, brandsData, statsData] = await Promise.all([
                fetchAdminOrders(),
                fetchAdminUsers(),
                fetchProducts(),
                fetchCategories(),
                fetchBrands(),
                fetchAdminStats()
            ]);
            setOrders(ordersData);
            setUsers(usersData);
            setProducts(productsData.data || productsData.items || productsData);
            setCategories(categoriesData);
            setBrands(brandsData);
            setDashboardStats(statsData.stats || { count: 0, total: 0 });
        } catch (error) {
            console.error("Failed to load admin data:", error);
        } finally {
            setLoading(false);
        }
    }

    const handleUpdateStatus = async (orderId: string, status: string) => {
        try {
            await updateOrderStatus(orderId, status);
            const ordersData = await fetchAdminOrders();
            setOrders(ordersData);
            toast.success("Statut de la commande mis à jour");
        } catch (error) {
            toast.error("Erreur lors de la mise à jour du statut");
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

    // Product CRUD handlers
    const openProductModal = (product: any = null) => {
        if (product) {
            setEditingProduct(product);
            setProductForm({
                name: product.name,
                sku: product.sku,
                base_unit_price: product.base_unit_price,
                stock: product.stock || 0,
                description: product.description || '',
                image_url: product.image_url || '',
                category_id: product.category_id || (categories[0]?.id || 1),
                brand_id: product.brand_id || (brands[0]?.id || 1),
                specifications: typeof product.specifications === 'string' ? product.specifications : JSON.stringify(product.specifications, null, 2),
                packaging_type: product.packaging_type || 'Unité'
            });
        } else {
            setEditingProduct(null);
            setProductForm({
                name: '', sku: '', base_unit_price: 0, stock: 100, description: '', image_url: '',
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
            }
            setIsBrandModalOpen(false);
            const brandsData = await fetchBrands();
            setBrands(brandsData);
        } catch (error) {
            toast.error("Erreur lors de la sauvegarde de la marque.");
        }
    };

    const stats = [
        { label: 'Revenu Total', value: `MAD ${(dashboardStats.total || 0).toLocaleString()}`, icon: TrendingUp },
        { label: 'Commandes', value: dashboardStats.count || orders.length, icon: ShoppingCart },
        { label: 'Cliniciens Inscrits', value: users.length, icon: Users },
        { label: 'Produits Active', value: products.length, icon: Package },
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
                        { id: 'dashboard', name: 'Accueil', icon: LayoutDashboard },
                        { id: 'orders', name: 'Commandes', icon: ShoppingCart },
                        { id: 'products', name: 'Produits', icon: Package },
                        { id: 'customers', name: 'Clients', icon: Users },
                        { id: 'brands', name: 'Marques', icon: ShieldCheck },
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
                                    <h2 className="text-base font-semibold text-gray-900">Commandes Récentes</h2>
                                </div>
                                <table className="w-full text-left text-sm">
                                    <thead className="bg-[#f9fafb] text-gray-500 font-medium">
                                        <tr>
                                            <th className="px-6 py-3">Commande</th>
                                            <th className="px-6 py-3">Date</th>
                                            <th className="px-6 py-3">Total</th>
                                            <th className="px-6 py-3">Statut</th>
                                        </tr>
                                    </thead>
                                    <tbody className="divide-y divide-gray-200">
                                        {orders.slice(0, 5).map(order => (
                                            <tr key={order.id} className="hover:bg-gray-50 cursor-pointer" onClick={() => setSelectedOrder(order)}>
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
                        </div>
                    )}

                    {activeTab === 'products' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <div className="px-6 py-4 border-b border-gray-200 flex justify-between items-center">
                                <h2 className="text-base font-semibold text-gray-900 tracking-tight">Catalogue de Produits</h2>
                                <button
                                    onClick={() => openProductModal()}
                                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-4 py-2 rounded-lg text-sm font-semibold flex items-center gap-2 transition-all shadow-md active:scale-95"
                                >
                                    <Plus className="w-4 h-4" /> Nouveau Produit
                                </button>
                            </div>
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium border-b border-gray-100">
                                    <tr>
                                        <th className="px-6 py-3">Produit</th>
                                        <th className="px-6 py-3">SKU</th>
                                        <th className="px-6 py-3">Prix</th>
                                        <th className="px-6 py-3 text-right">Actions</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-100">
                                    {products.filter(p => p.name.toLowerCase().includes(searchTerm.toLowerCase())).map(product => (
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

                    {activeTab === 'orders' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
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
                                    {orders.filter(o => o.id.toString().includes(searchTerm)).map(order => (
                                        <tr key={order.id} className="hover:bg-gray-50/50">
                                            <td className="px-6 py-4 font-bold text-gray-900">#{order.id.toString().slice(0, 8)}</td>
                                            <td className="px-6 py-4 text-gray-500">{new Date(order.created_at).toLocaleString('fr-FR')}</td>
                                            <td className="px-6 py-4">Clinique {order.user_id?.slice(0, 5) || 'Guest'}</td>
                                            <td className="px-6 py-4 text-gray-900 font-bold">MAD {order.total_amount}</td>
                                            <td className="px-6 py-4">
                                                <select
                                                    value={order.status}
                                                    onChange={(e) => handleUpdateStatus(order.id, e.target.value)}
                                                    className="border border-gray-200 rounded-lg px-2 py-1 text-xs font-semibold text-gray-700 bg-white focus:outline-none focus:ring-2 focus:ring-medical-blue/20"
                                                >
                                                    <option value="pending">En attente</option>
                                                    <option value="shipped">Expédiée</option>
                                                    <option value="delivered">Livrée</option>
                                                    <option value="cancelled">Annulée</option>
                                                </select>
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                        </div>
                    )}

                    {activeTab === 'customers' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <div className="px-6 py-4 border-b border-gray-200 flex justify-between items-center">
                                <h2 className="text-base font-semibold text-gray-900 tracking-tight">Gestion des Clients / Cliniques</h2>
                            </div>
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium border-b border-gray-100">
                                    <tr>
                                        <th className="px-6 py-3">Client</th>
                                        <th className="px-6 py-3">Informations</th>
                                        <th className="px-6 py-3">Inscription</th>
                                        <th className="px-6 py-3">Statut</th>
                                        <th className="px-6 py-3 text-right">Actions</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-100">
                                    {users.filter(u => `${u.full_name} ${u.clinic_name}`.toLowerCase().includes(searchTerm.toLowerCase())).map(user => (
                                        <tr key={user.id} className="hover:bg-gray-50/50">
                                            <td className="px-6 py-4">
                                                <div className="font-semibold text-gray-900">{user.full_name}</div>
                                                <div className="text-gray-500">{user.clinic_name}</div>
                                                <div className="text-xs text-gray-400 mt-1">{user.email}</div>
                                            </td>
                                            <td className="px-6 py-4">
                                                <div className="text-gray-900">{user.specialty || '-'}</div>
                                                <div className="text-gray-500 text-xs">INPE: {user.inpe_number || '-'}</div>
                                                <div className="text-gray-500 text-xs">{user.city || '-'}</div>
                                            </td>
                                            <td className="px-6 py-4 text-gray-500">
                                                {new Date(user.created_at).toLocaleDateString('fr-FR')}
                                            </td>
                                            <td className="px-6 py-4">
                                                <span className={`inline-flex items-center px-2 py-0.5 rounded-full text-xs font-medium 
                                                    ${user.verification_status === 'verified' ? 'bg-emerald-100 text-emerald-800' :
                                                        user.verification_status === 'pending' ? 'bg-amber-100 text-amber-800' : 'bg-gray-100 text-gray-800'}`}>
                                                    {user.verification_status || 'verified'}
                                                </span>
                                            </td>
                                            <td className="px-6 py-4 text-right">
                                                {user.verification_status === 'pending' && (
                                                    <button
                                                        onClick={() => handleVerifyUser(user.id)}
                                                        className="bg-medical-blue hover:bg-medical-blue-dark text-white px-3 py-1.5 rounded-lg text-xs font-semibold shadow-sm transition-all active:scale-95"
                                                    >
                                                        Approuver
                                                    </button>
                                                )}
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
                                <h2 className="text-base font-semibold text-gray-900 tracking-tight">Gestion des Marques & Partenaires</h2>
                            </div>
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium">
                                    <tr>
                                        <th className="px-6 py-3">Marque</th>
                                        <th className="px-6 py-3">Fabricant</th>
                                        <th className="px-6 py-3">Certificats CE</th>
                                        <th className="px-6 py-3 text-right">Actions</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-100">
                                    {brands.map(brand => (
                                        <tr key={brand.id} className="hover:bg-gray-50/50 group">
                                            <td className="px-6 py-4">
                                                <div className="flex items-center gap-3">
                                                    <div className="w-12 h-12 bg-gray-50 rounded-lg flex items-center justify-center border border-gray-100 p-1 relative overflow-hidden flex-shrink-0">
                                                        {brand.logo_url ? (
                                                            <Image src={brand.logo_url} alt="" fill sizes="48px" className="object-contain p-1" />
                                                        ) : (
                                                            <ShieldCheck className="w-6 h-6 text-gray-300" />
                                                        )}
                                                    </div>
                                                    <div className="font-semibold text-gray-900">{brand.name}</div>
                                                </div>
                                            </td>
                                            <td className="px-6 py-4 text-gray-500">{brand.manufacturer || '-'}</td>
                                            <td className="px-6 py-4">
                                                {brand.ce_certificate_url ? (
                                                    <span className="text-emerald-600 font-bold text-xs uppercase flex items-center gap-1">
                                                        <CheckCircle2 className="w-4 h-4" /> Disponible
                                                    </span>
                                                ) : (
                                                    <span className="text-gray-400 text-xs italic">Non renseigné</span>
                                                )}
                                            </td>
                                            <td className="px-6 py-4 text-right opacity-0 group-hover:opacity-100 transition-opacity">
                                                <button onClick={() => openBrandModal(brand)} className="p-1.5 text-gray-400 hover:text-medical-blue hover:bg-medical-blue/5 rounded-md">
                                                    <Edit2 className="w-4 h-4" />
                                                </button>
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                        </div>
                    )}
                </div>
            </main>

            {/* ORDER DETAIL MODAL */}
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
                            <div className="grid grid-cols-2 gap-8">
                                <div>
                                    <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-1">Livraison</div>
                                    <div className="text-sm text-gray-900 font-medium">Casablanca, Maroc</div>
                                    <div className="text-sm text-gray-500">Adresse de Clinique enregistrée</div>
                                </div>
                                <div className="text-right">
                                    <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-1">Montant</div>
                                    <div className="text-2xl font-black text-medical-blue">MAD {selectedOrder.total_amount}</div>
                                </div>
                            </div>
                            <div className="border border-gray-100 rounded-xl p-4 bg-gray-50/20">
                                <div className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-3">Statut actuel</div>
                                <div className="flex gap-2">
                                    {['pending', 'shipped', 'delivered'].map((s) => (
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
                                onClick={() => {
                                    window.open(`${process.env.NEXT_PUBLIC_API_URL || 'https://mediunit-backend.a-naouri.workers.dev/api/v1'}/orders/${selectedOrder.id}/invoice`);
                                }}
                                className="bg-white border border-gray-200 text-gray-900 px-6 py-2.5 rounded-xl text-sm font-bold shadow-sm hover:border-gray-300 transition-all flex items-center gap-2"
                            >
                                <FileText className="w-4 h-4" /> Télécharger Facture
                            </button>
                        </div>
                    </div>
                </div>
            )}

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
                                <div className="col-span-4">
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Nom Commercial</label>
                                    <input required type="text" value={productForm.name} onChange={e => setProductForm({ ...productForm, name: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm focus:ring-4 focus:ring-medical-blue/10 focus:border-medical-blue transition-all" placeholder="Ex: Kit de Péridurale" />
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
                                    <label className="block text-xs font-bold text-gray-400 uppercase tracking-widest mb-1.5 ml-1">Description Marketing & Légale</label>
                                    <textarea rows={4} value={productForm.description} onChange={e => setProductForm({ ...productForm, description: e.target.value })} className="w-full bg-gray-50/50 border border-gray-100 rounded-xl px-4 py-3 text-sm"></textarea>
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
                            <h3 className="text-xl font-bold text-gray-900">Éditer la Marque</h3>
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
                                <button type="submit" className="px-6 py-2.5 bg-medical-blue text-white rounded-xl text-sm font-bold shadow-lg shadow-medical-blue/20">Mettre à jour</button>
                            </div>
                        </form>
                    </div>
                </div>
            )}
        </div>
    );
}
