'use client';

import React from 'react';
import {
    LayoutDashboard,
    ShoppingCart,
    Users,
    Package,
    ShieldCheck,
    Settings
} from 'lucide-react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface AdminSidebarProps {
    activeTab: string;
    setActiveTab: (tab: any) => void;
}

const AdminSidebar: React.FC<AdminSidebarProps> = ({ activeTab, setActiveTab }) => {
    const { t } = useLanguageStore();

    const navItems = [
        { id: 'dashboard', name: t('Tableau de bord', 'Dashboard'), icon: LayoutDashboard },
        { id: 'orders', name: t('Commandes', 'Orders'), icon: ShoppingCart },
        { id: 'products', name: t('Produits', 'Products'), icon: Package },
        { id: 'customers', name: t('Clients', 'Customers'), icon: Users },
        { id: 'brands', name: t('Marques', 'Brands'), icon: ShieldCheck },
        { id: 'settings', name: t('Paramètres', 'Settings'), icon: Settings },
    ];

    return (
        <aside className="w-64 bg-white border-r border-gray-200 flex flex-col fixed h-full z-10 transition-all duration-300">
            <div className="p-6">
                <div className="flex items-center gap-3">
                    <div className="w-10 h-10 bg-gradient-to-br from-gray-900 to-black rounded-xl flex items-center justify-center shadow-lg shadow-black/10">
                        <span className="text-white font-bold text-lg">MU</span>
                    </div>
                    <span className="font-bold text-gray-900 text-xl tracking-tight">MediUnit</span>
                </div>
            </div>

            <nav className="flex-1 px-4 space-y-1 mt-4">
                {navItems.map((item) => (
                    <button
                        key={item.id}
                        onClick={() => setActiveTab(item.id)}
                        className={`w-full flex items-center gap-3 px-4 py-3 rounded-xl text-sm font-semibold transition-all duration-200 ${activeTab === item.id
                                ? 'bg-medical-blue/5 text-medical-blue shadow-sm'
                                : 'text-gray-500 hover:bg-gray-50 hover:text-gray-900'
                            }`}
                    >
                        <item.icon className={`w-5 h-5 transition-transform duration-200 ${activeTab === item.id ? 'scale-110' : ''
                            }`} />
                        {item.name}
                        {activeTab === item.id && (
                            <div className="ml-auto w-1.5 h-1.5 bg-medical-blue rounded-full animate-pulse" />
                        )}
                    </button>
                ))}
            </nav>

            <div className="p-4 border-t border-gray-100">
                <div className="bg-gray-50 rounded-xl p-4">
                    <p className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-1">Status</p>
                    <div className="flex items-center gap-2">
                        <div className="w-2 h-2 bg-emerald-500 rounded-full animate-pulse" />
                        <span className="text-xs font-bold text-gray-700">Production Live</span>
                    </div>
                </div>
            </div>
        </aside>
    );
};

export default AdminSidebar;
