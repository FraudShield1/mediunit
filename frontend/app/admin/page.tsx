'use client';

import React, { useState, useEffect } from 'react';
import {
    LayoutDashboard, ShoppingCart, Users, TrendingUp, Search, Filter,
    CheckCircle2, Clock, Package, ChevronDown, Plus, Edit2, Trash2, X, FileText
} from 'lucide-react';
import {
    fetchAdminOrders, fetchAdminUsers, updateOrderStatus, verifyUser,
    fetchProducts, createProduct, updateProduct, deleteProduct
} from '@/app/lib/api';

type TabType = 'dashboard' | 'orders' | 'products' | 'customers' | 'settings';

export default function AdminDashboard() {
    const [orders, setOrders] = useState<any[]>([]);
    const [users, setUsers] = useState<any[]>([]);
    const [products, setProducts] = useState<any[]>([]);
    const [loading, setLoading] = useState(true);
    const [activeTab, setActiveTab] = useState<TabType>('dashboard');
    const [searchTerm, setSearchTerm] = useState('');

    // Product Modal State
    const [isProductModalOpen, setIsProductModalOpen] = useState(false);
    const [editingProduct, setEditingProduct] = useState<any | null>(null);
    const [productForm, setProductForm] = useState<any>({ name: '', sku: '', base_unit_price: 0, stock: 100, description: '', image_url: '', category_id: 1, brand_id: 1, specifications: '{}', packaging_type: 'Unité' });

    useEffect(() => {
        loadAdminData();
    }, []);

    async function loadAdminData() {
        setLoading(true);
        try {
            const token = typeof window !== 'undefined' ? localStorage.getItem('mediunit_token') : null;
            if (token) {
                const [ordersData, usersData, productsData] = await Promise.all([
                    fetchAdminOrders(),
                    fetchAdminUsers(),
                    fetchProducts() // Gets up to 100 for admin view
                ]);
                setOrders(ordersData);
                setUsers(usersData);
                setProducts(productsData.data || productsData.items || productsData);
            }
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
        } catch (error) {
            alert("Erreur lors de la mise à jour du statut");
        }
    };

    const handleVerifyUser = async (userId: string) => {
        try {
            await verifyUser(userId);
            const usersData = await fetchAdminUsers();
            setUsers(usersData);
        } catch (error) {
            alert("Erreur lors de la vérification");
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
                category_id: product.category_id || 1,
                brand_id: product.brand_id || 1,
                specifications: product.specifications || '{}',
                packaging_type: product.packaging_type || 'Unité'
            });
        } else {
            setEditingProduct(null);
            setProductForm({ name: '', sku: '', base_unit_price: 0, stock: 100, description: '', image_url: '', category_id: 1, brand_id: 1, specifications: '{}', packaging_type: 'Unité' });
        }
        setIsProductModalOpen(true);
    };

    const handleSaveProduct = async (e: React.FormEvent) => {
        e.preventDefault();
        try {
            if (editingProduct) {
                await updateProduct(editingProduct.id, productForm);
            } else {
                await createProduct(productForm);
            }
            setIsProductModalOpen(false);
            const productsData = await fetchProducts();
            setProducts(productsData);
        } catch (error) {
            alert("Error saving product.");
        }
    };

    const handleDeleteProduct = async (productId: string) => {
        if (confirm("Êtes-vous sûr de vouloir supprimer ce produit ?")) {
            try {
                await deleteProduct(productId);
                const productsData = await fetchProducts();
                setProducts(productsData);
            } catch (error) {
                alert("Error deleting product.");
            }
        }
    };

    const stats = [
        { label: 'Revenu Total', value: `MAD ${orders.reduce((acc, o) => acc + (parseFloat(o.total_amount) || 0), 0).toFixed(0)}`, icon: TrendingUp },
        { label: 'Commandes', value: orders.length, icon: ShoppingCart },
        { label: 'Cliniciens Inscrits', value: users.length, icon: Users },
        { label: 'Produits', value: products.length, icon: Package },
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
                    <h1 className="text-2xl font-bold text-gray-900 capitalize">
                        {activeTab === 'dashboard' ? 'Aperçu' : activeTab}
                    </h1>
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

                {/* Tab Contents */}
                <div className="max-w-6xl mx-auto">

                    {/* DASHBOARD TAB */}
                    {activeTab === 'dashboard' && (
                        <div className="space-y-6">
                            <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
                                {stats.map((stat, i) => (
                                    <div key={i} className="bg-white p-5 rounded-lg shadow-sm border border-gray-200">
                                        <div className="flex items-center gap-3 mb-2">
                                            <div className="p-2 bg-gray-100 rounded-md">
                                                <stat.icon className="w-5 h-5 text-gray-600" />
                                            </div>
                                            <span className="text-sm font-medium text-gray-600">{stat.label}</span>
                                        </div>
                                        <div className="text-2xl font-semibold text-gray-900">{stat.value}</div>
                                    </div>
                                ))}
                            </div>

                            {/* Recent Orders Box */}
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
                                            <tr key={order.id} className="hover:bg-gray-50">
                                                <td className="px-6 py-4 font-medium text-gray-900">#{order.id.slice(0, 6)}</td>
                                                <td className="px-6 py-4 text-gray-500">{new Date(order.created_at).toLocaleDateString()}</td>
                                                <td className="px-6 py-4 text-gray-900">MAD {order.total_amount}</td>
                                                <td className="px-6 py-4">
                                                    <span className={`inline-flex items-center px-2 py-0.5 rounded text-xs font-medium 
                                                        ${order.status === 'pending' ? 'bg-yellow-100 text-yellow-800' :
                                                            order.status === 'delivered' ? 'bg-green-100 text-green-800' : 'bg-blue-100 text-blue-800'}`}>
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

                    {/* PRODUCTS TAB */}
                    {activeTab === 'products' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <div className="px-6 py-4 border-b border-gray-200 flex justify-between items-center">
                                <h2 className="text-base font-semibold text-gray-900">Catalogue ({products.length})</h2>
                                <button
                                    onClick={() => openProductModal()}
                                    className="bg-[#000000] hover:bg-gray-800 text-white px-3 py-1.5 rounded-md text-sm font-medium flex items-center gap-2"
                                >
                                    <Plus className="w-4 h-4" /> Ajouter Un Produit
                                </button>
                            </div>
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium">
                                    <tr>
                                        <th className="px-6 py-3">Produit</th>
                                        <th className="px-6 py-3">SKU</th>
                                        <th className="px-6 py-3">Prix Base</th>
                                        <th className="px-6 py-3">Stock</th>
                                        <th className="px-6 py-3 text-right">Actions</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-200">
                                    {products.filter(p => p.name.toLowerCase().includes(searchTerm.toLowerCase())).map(product => (
                                        <tr key={product.id} className="hover:bg-gray-50">
                                            <td className="px-6 py-4">
                                                <div className="font-medium text-gray-900">{product.name}</div>
                                                <div className="text-gray-500 text-xs">{product.category_name}</div>
                                            </td>
                                            <td className="px-6 py-4 text-gray-500">{product.sku}</td>
                                            <td className="px-6 py-4 text-gray-900">MAD {product.base_unit_price}</td>
                                            <td className="px-6 py-4 text-gray-500">{product.stock || 100}</td>
                                            <td className="px-6 py-4 text-right">
                                                <button onClick={() => openProductModal(product)} className="text-gray-400 hover:text-gray-700 mx-2">
                                                    <Edit2 className="w-4 h-4" />
                                                </button>
                                                <button onClick={() => handleDeleteProduct(product.id)} className="text-red-400 hover:text-red-600">
                                                    <Trash2 className="w-4 h-4" />
                                                </button>
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                        </div>
                    )}

                    {/* ORDERS TAB */}
                    {activeTab === 'orders' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium">
                                    <tr>
                                        <th className="px-6 py-3">ID</th>
                                        <th className="px-6 py-3">Date</th>
                                        <th className="px-6 py-3">Total</th>
                                        <th className="px-6 py-3">Statut</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-200">
                                    {orders.filter(o => o.id.includes(searchTerm)).map(order => (
                                        <tr key={order.id} className="hover:bg-gray-50">
                                            <td className="px-6 py-4 font-medium text-gray-900">#{order.id}</td>
                                            <td className="px-6 py-4 text-gray-500">{new Date(order.created_at).toLocaleString()}</td>
                                            <td className="px-6 py-4 text-gray-900">MAD {order.total_amount}</td>
                                            <td className="px-6 py-4">
                                                <select
                                                    value={order.status}
                                                    onChange={(e) => handleUpdateStatus(order.id, e.target.value)}
                                                    className="border border-gray-300 rounded px-2 py-1 text-sm text-gray-700 bg-white"
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

                    {/* CUSTOMERS TAB */}
                    {activeTab === 'customers' && (
                        <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
                            <table className="w-full text-left text-sm">
                                <thead className="bg-[#f9fafb] text-gray-500 font-medium">
                                    <tr>
                                        <th className="px-6 py-3">Employé</th>
                                        <th className="px-6 py-3">Clinique</th>
                                        <th className="px-6 py-3">INPE</th>
                                        <th className="px-6 py-3">Docs</th>
                                        <th className="px-6 py-3">Statut</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-200">
                                    {users.map(user => (
                                        <tr key={user.id} className="hover:bg-gray-50">
                                            <td className="px-6 py-4 font-medium text-gray-900">{user.email}</td>
                                            <td className="px-6 py-4 text-gray-500">{user.clinic_name}</td>
                                            <td className="px-6 py-4 text-gray-500">{user.inpe_number || '-'}</td>
                                            <td className="px-6 py-4 text-gray-500">
                                                {user.license_url && <a href={user.license_url} target="_blank" rel="noreferrer" className="text-blue-600 hover:underline"><FileText className="w-4 h-4" /></a>}
                                            </td>
                                            <td className="px-6 py-4">
                                                {user.verification_status !== 'verified' ? (
                                                    <button onClick={() => handleVerifyUser(user.id)} className="bg-green-600 text-white px-2 py-1 rounded text-xs px-3">Valider</button>
                                                ) : (
                                                    <span className="text-sm text-green-600 font-medium">Vérifié</span>
                                                )}
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                        </div>
                    )}
                </div>
            </main>

            {/* PRODUCT MODAL */}
            {isProductModalOpen && (
                <div className="fixed inset-0 bg-black/50 z-50 flex items-center justify-center">
                    <div className="bg-white rounded-lg shadow-xl w-full max-w-2xl max-h-[90vh] flex flex-col">
                        <div className="px-6 py-4 border-b border-gray-200 flex justify-between items-center shrink-0">
                            <h3 className="text-lg font-semibold text-gray-900">{editingProduct ? 'Modifier Produit' : 'Ajouter Produit'}</h3>
                            <button onClick={() => setIsProductModalOpen(false)} className="text-gray-400 hover:text-gray-600"><X className="w-5 h-5" /></button>
                        </div>
                        <form onSubmit={handleSaveProduct} className="p-6 space-y-4 overflow-y-auto">
                            <div className="grid grid-cols-2 gap-4">
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">Nom du produit</label>
                                    <input required type="text" value={productForm.name} onChange={e => setProductForm({ ...productForm, name: e.target.value })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">SKU</label>
                                    <input required type="text" value={productForm.sku} onChange={e => setProductForm({ ...productForm, sku: e.target.value })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                            </div>
                            <div className="grid grid-cols-2 gap-4">
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">Prix de Base (MAD)</label>
                                    <input required type="number" step="0.01" value={productForm.base_unit_price} onChange={e => setProductForm({ ...productForm, base_unit_price: parseFloat(e.target.value) })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">Stock</label>
                                    <input required type="number" value={productForm.stock} onChange={e => setProductForm({ ...productForm, stock: parseInt(e.target.value) })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                            </div>
                            <div className="grid grid-cols-2 gap-4">
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">ID Catégorie</label>
                                    <input required type="number" value={productForm.category_id} onChange={e => setProductForm({ ...productForm, category_id: parseInt(e.target.value) })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">ID Marque (Brand)</label>
                                    <input required type="number" value={productForm.brand_id} onChange={e => setProductForm({ ...productForm, brand_id: parseInt(e.target.value) })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                            </div>
                            <div className="grid grid-cols-2 gap-4">
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">Type de Conditionnement</label>
                                    <input required type="text" placeholder="Ex: Unité, Boîte de 10" value={productForm.packaging_type} onChange={e => setProductForm({ ...productForm, packaging_type: e.target.value })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                                <div>
                                    <label className="block text-sm font-medium text-gray-700 mb-1">URL Image Royale</label>
                                    <input required type="text" value={productForm.image_url} onChange={e => setProductForm({ ...productForm, image_url: e.target.value })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm" />
                                </div>
                            </div>
                            <div>
                                <label className="block text-sm font-medium text-gray-700 mb-1">Spécifications Techniques (JSON)</label>
                                <textarea required rows={3} value={productForm.specifications} onChange={e => setProductForm({ ...productForm, specifications: e.target.value })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm font-mono"></textarea>
                            </div>
                            <div>
                                <label className="block text-sm font-medium text-gray-700 mb-1">Description Clinique</label>
                                <textarea rows={4} value={productForm.description} onChange={e => setProductForm({ ...productForm, description: e.target.value })} className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm max-h-32"></textarea>
                            </div>
                            <div className="pt-4 flex justify-end gap-3 shrink-0 border-t border-gray-200 mt-4">
                                <button type="button" onClick={() => setIsProductModalOpen(false)} className="px-4 py-2 border border-gray-300 text-gray-700 rounded-md text-sm font-medium hover:bg-gray-50 mt-4">Annuler</button>
                                <button type="submit" className="px-4 py-2 bg-[#000000] text-white rounded-md text-sm font-medium hover:bg-gray-800 mt-4">Sauvegarder</button>
                            </div>
                        </form>
                    </div>
                </div>
            )}
        </div>
    );
}
