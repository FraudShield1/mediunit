'use client';

import React, { useState, useEffect } from 'react';
import {
    LayoutDashboard,
    ShoppingCart,
    Users,
    TrendingUp,
    Search,
    Filter,
    CheckCircle2,
    Clock,
    AlertCircle,
    Package,
    ChevronDown,
    MoreVertical
} from 'lucide-react';
import { fetchAdminOrders, fetchAdminUsers, updateOrderStatus, verifyUser } from '@/app/lib/api';

export default function AdminDashboard() {
    const [orders, setOrders] = useState<any[]>([]);
    const [users, setUsers] = useState<any[]>([]);
    const [loading, setLoading] = useState(true);
    const [activeTab, setActiveTab] = useState<'orders' | 'users'>('orders');
    const [searchTerm, setSearchTerm] = useState('');

    useEffect(() => {
        async function loadAdminData() {
            try {
                // In a real app, we'd get this from context/auth state
                const token = typeof window !== 'undefined' ? localStorage.getItem('mediunit_token') : null;
                if (token) {
                    const [ordersData, usersData] = await Promise.all([
                        fetchAdminOrders(token),
                        fetchAdminUsers(token)
                    ]);
                    setOrders(ordersData);
                    setUsers(usersData);
                }
            } catch (error) {
                console.error("Failed to load admin data:", error);
            } finally {
                setLoading(false);
            }
        }
        loadAdminData();
    }, []);

    const handleUpdateStatus = async (orderId: string, status: string) => {
        try {
            const token = localStorage.getItem('mediunit_token');
            if (token) {
                await updateOrderStatus(token, orderId, status);
                // Refresh orders
                const ordersData = await fetchAdminOrders(token);
                setOrders(ordersData);
            }
        } catch (error) {
            alert("Erreur lors de la mise à jour du statut");
        }
    };

    const handleVerifyUser = async (userId: string) => {
        try {
            const token = localStorage.getItem('mediunit_token');
            if (token) {
                await verifyUser(token, userId);
                const usersData = await fetchAdminUsers(token);
                setUsers(usersData);
            }
        } catch (error) {
            alert("Erreur lors de la vérification");
        }
    };

    const stats = [
        { label: 'Orders Total', value: orders.length, icon: ShoppingCart, color: 'text-medical-blue', bg: 'bg-medical-blue/10' },
        { label: 'Chiffre d\'affaires', value: `MAD ${orders.reduce((acc, o) => acc + (parseFloat(o.total_amount) || 0), 0).toFixed(0)}`, icon: TrendingUp, color: 'text-sage-green', bg: 'bg-sage-green/10' },
        { label: 'Cliniciens', value: users.length, icon: Users, color: 'text-purple-500', bg: 'bg-purple-50' },
        { label: 'À Livrer', value: orders.filter(o => o.status === 'pending').length, icon: Package, color: 'text-orange-500', bg: 'bg-orange-50' },
    ];

    if (loading) return (
        <div className="min-h-screen flex items-center justify-center bg-clinic-white">
            <div className="w-12 h-12 border-4 border-medical-blue/20 border-t-medical-blue rounded-full animate-spin"></div>
        </div>
    );

    return (
        <div className="min-h-screen bg-clinic-white pb-24">
            {/* Sidebar / Header */}
            <div className="bg-white border-b border-slate-gray-light/10 sticky top-0 z-50">
                <div className="max-w-[1600px] mx-auto px-6 h-20 flex items-center justify-between">
                    <div className="flex items-center gap-4">
                        <div className="w-10 h-10 bg-medical-blue rounded-xl flex items-center justify-center">
                            <LayoutDashboard className="text-white w-6 h-6" />
                        </div>
                        <h1 className="text-xl font-black text-slate-gray-dark tracking-tight">MediUnit Admin</h1>
                    </div>
                    <div className="flex items-center gap-6">
                        <div className="hidden md:flex items-center bg-clinic-white rounded-full px-4 py-2 border border-slate-gray-light/10">
                            <Search className="w-4 h-4 text-slate-gray mr-2" />
                            <input
                                type="text"
                                placeholder="Rechercher..."
                                className="bg-transparent border-none outline-none text-sm text-slate-gray-dark w-64"
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                            />
                        </div>
                        <div className="w-10 h-10 rounded-full bg-slate-gray-light/20 border-2 border-white shadow-sm overflow-hidden">
                            <img src="https://api.dicebear.com/7.x/avataaars/svg?seed=Admin" alt="Admin" />
                        </div>
                    </div>
                </div>
            </div>

            <main className="max-w-[1600px] mx-auto px-6 py-8">
                {/* Stats Grid */}
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-12">
                    {stats.map((stat, i) => (
                        <div key={i} className="bg-white rounded-3xl p-6 shadow-xl shadow-medical-blue/5 border border-slate-gray-light/5">
                            <div className="flex items-center gap-4 mb-4">
                                <div className={`w-12 h-12 ${stat.bg} rounded-2xl flex items-center justify-center`}>
                                    <stat.icon className={`w-6 h-6 ${stat.color}`} />
                                </div>
                                <span className="text-sm font-bold text-slate-gray tracking-wide uppercase">{stat.label}</span>
                            </div>
                            <div className="text-3xl font-black text-slate-gray-dark">{stat.value}</div>
                        </div>
                    ))}
                </div>

                {/* Main Content Area */}
                <div className="bg-white rounded-[3rem] shadow-2xl shadow-medical-blue/5 border border-slate-gray-light/10 overflow-hidden">
                    <div className="border-b border-slate-gray-light/10 px-8 py-6 flex flex-col md:flex-row md:items-center justify-between gap-6">
                        <div className="flex items-center bg-clinic-white p-1 rounded-2xl border border-slate-gray-light/10">
                            <button
                                onClick={() => setActiveTab('orders')}
                                className={`px-6 py-2.5 rounded-xl font-bold text-sm transition-all ${activeTab === 'orders' ? 'bg-white text-medical-blue shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                Commandes
                            </button>
                            <button
                                onClick={() => setActiveTab('users')}
                                className={`px-6 py-2.5 rounded-xl font-bold text-sm transition-all ${activeTab === 'users' ? 'bg-white text-medical-blue shadow-sm' : 'text-slate-gray hover:text-medical-blue'}`}
                            >
                                Clients
                            </button>
                        </div>
                        <div className="flex items-center gap-3">
                            <button className="h-11 px-6 rounded-xl border border-slate-gray-light/20 text-slate-gray-dark font-bold text-sm flex items-center gap-2 hover:bg-clinic-white transition-colors">
                                <Filter className="w-4 h-4" /> Filtrer
                            </button>
                            <button className="h-11 px-6 rounded-xl bg-medical-blue text-white font-bold text-sm hover:bg-medical-blue-dark transition-colors shadow-lg shadow-medical-blue/20">
                                Exporter .CSV
                            </button>
                        </div>
                    </div>

                    <div className="overflow-x-auto">
                        <table className="w-full text-left">
                            <thead className="bg-clinic-white/50 border-b border-slate-gray-light/10">
                                <tr>
                                    {activeTab === 'orders' ? (
                                        <>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">ID Commande</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Client / Clinique</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Date</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Total</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Statut</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Action</th>
                                        </>
                                    ) : (
                                        <>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Email</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Clinique</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">INPE</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Inscrit le</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Statut</th>
                                            <th className="px-8 py-5 text-xs font-bold text-slate-gray uppercase tracking-widest">Action</th>
                                        </>
                                    )}
                                </tr>
                            </thead>
                            <tbody className="divide-y divide-slate-gray-light/5 text-slate-gray-dark">
                                {activeTab === 'orders' ? (
                                    orders.map((order) => (
                                        <tr key={order.id} className="hover:bg-clinic-white/30 transition-colors">
                                            <td className="px-8 py-5">
                                                <span className="font-mono text-xs font-bold text-slate-gray-dark">#{order.id.slice(0, 8)}</span>
                                            </td>
                                            <td className="px-8 py-5">
                                                <div className="flex flex-col">
                                                    <span className="font-bold text-sm">Dr. User</span>
                                                    <span className="text-xs text-slate-gray">Hôpital Central</span>
                                                </div>
                                            </td>
                                            <td className="px-8 py-5 text-sm text-slate-gray">
                                                {new Date(order.created_at).toLocaleDateString()}
                                            </td>
                                            <td className="px-8 py-5">
                                                <span className="font-black text-medical-blue">MAD {order.total_amount}</span>
                                            </td>
                                            <td className="px-8 py-5">
                                                <div className="flex items-center gap-2">
                                                    {order.status === 'pending' ? (
                                                        <span className="flex items-center gap-1.5 px-3 py-1 bg-orange-50 text-orange-600 text-[10px] font-black uppercase tracking-wider rounded-full ring-1 ring-orange-500/20">
                                                            <Clock className="w-3 h-3" /> En attente
                                                        </span>
                                                    ) : order.status === 'shipped' ? (
                                                        <span className="flex items-center gap-1.5 px-3 py-1 bg-medical-blue/5 text-medical-blue text-[10px] font-black uppercase tracking-wider rounded-full ring-1 ring-medical-blue/20">
                                                            <Package className="w-3 h-3" /> Expédié
                                                        </span>
                                                    ) : (
                                                        <span className="flex items-center gap-1.5 px-3 py-1 bg-sage-green/5 text-sage-green-dark text-[10px] font-black uppercase tracking-wider rounded-full ring-1 ring-sage-green/20">
                                                            <CheckCircle2 className="w-3 h-3" /> Livré
                                                        </span>
                                                    )}
                                                </div>
                                            </td>
                                            <td className="px-8 py-5">
                                                <div className="flex items-center gap-2">
                                                    <select
                                                        onChange={(e) => handleUpdateStatus(order.id, e.target.value)}
                                                        value={order.status}
                                                        className="bg-clinic-white border border-slate-gray-light/20 rounded-lg text-xs font-bold h-8 px-2 outline-none focus:ring-2 focus:ring-medical-blue/20"
                                                    >
                                                        <option value="pending">En attente</option>
                                                        <option value="shipped">Expédiée</option>
                                                        <option value="delivered">Livrée</option>
                                                        <option value="cancelled">Annulée</option>
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                    ))
                                ) : (
                                    users.map((user) => (
                                        <tr key={user.id} className="hover:bg-clinic-white/30 transition-colors">
                                            <td className="px-8 py-5">
                                                <div className="flex items-center gap-3">
                                                    <div className="w-8 h-8 rounded-full bg-medical-blue/10 flex items-center justify-center text-medical-blue font-bold text-xs uppercase">
                                                        {user.email[0]}
                                                    </div>
                                                    <span className="font-bold text-sm">{user.email}</span>
                                                </div>
                                            </td>
                                            <td className="px-8 py-5 text-sm">{user.clinic_name}</td>
                                            <td className="px-8 py-5 text-sm font-mono text-slate-gray">{user.inpe_number || '-'}</td>
                                            <td className="px-8 py-5 text-sm text-slate-gray">{new Date(user.created_at).toLocaleDateString()}</td>
                                            <td className="px-8 py-5">
                                                <div className="flex items-center gap-2">
                                                    <span className={`px-3 py-1 rounded-full text-[10px] font-black uppercase tracking-widest ${user.verification_status === 'verified' ? 'bg-sage-green/10 text-sage-green-dark' : 'bg-slate-gray-light/10 text-slate-gray'}`}>
                                                        {user.verification_status}
                                                    </span>
                                                    {user.license_url && (
                                                        <a href={user.license_url} target="_blank" rel="noopener noreferrer" className="text-medical-blue hover:underline text-[10px] font-bold">Voir Licence</a>
                                                    )}
                                                </div>
                                            </td>
                                            <td className="px-8 py-5">
                                                {user.verification_status !== 'verified' && (
                                                    <button
                                                        onClick={() => handleVerifyUser(user.id)}
                                                        className="h-8 px-4 bg-medical-blue text-white text-[10px] font-black uppercase tracking-widest rounded-lg hover:bg-medical-blue-dark transition-colors"
                                                    >
                                                        Approuver
                                                    </button>
                                                )}
                                            </td>
                                        </tr>
                                    ))
                                )}
                            </tbody>
                        </table>

                        {(activeTab === 'orders' ? orders : users).length === 0 && (
                            <div className="py-24 text-center">
                                <AlertCircle className="w-12 h-12 text-slate-gray-light mx-auto mb-4 opacity-20" />
                                <p className="text-slate-gray">Aucun résultat trouvé pour le moment.</p>
                            </div>
                        )}
                    </div>
                </div>
            </main>
        </div>
    );
}
