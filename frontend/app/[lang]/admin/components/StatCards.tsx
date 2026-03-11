'use client';

import React from 'react';
import { Users, ShoppingCart, Package, TrendingUp } from 'lucide-react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface StatCardsProps {
    usersCount: number;
    ordersCount: number;
    productsCount: number;
    revenue: string | number;
}

const StatCards: React.FC<StatCardsProps> = ({ usersCount, ordersCount, productsCount, revenue }) => {
    const { t } = useLanguageStore();

    const stats = [
        {
            label: t('Utilisateurs', 'Users'),
            value: usersCount,
            icon: Users,
            color: 'text-blue-600',
            bg: 'bg-blue-50'
        },
        {
            label: t('Commandes', 'Orders'),
            value: ordersCount,
            icon: ShoppingCart,
            color: 'text-emerald-600',
            bg: 'bg-emerald-50'
        },
        {
            label: t('Produits', 'Products'),
            value: productsCount,
            icon: Package,
            color: 'text-amber-600',
            bg: 'bg-amber-50'
        },
        {
            label: t('Revenu (H.T)', 'Revenue (Excl. Tax)'),
            value: revenue,
            icon: TrendingUp,
            color: 'text-rose-600',
            bg: 'bg-rose-50'
        }
    ];

    return (
        <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
            {stats.map((stat, i) => (
                <div key={i} className="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 hover:shadow-md transition-all duration-300 group">
                    <div className="flex items-center justify-between mb-4">
                        <div className={`p-3 ${stat.bg} rounded-xl group-hover:scale-110 transition-transform duration-300`}>
                            <stat.icon className={`w-6 h-6 ${stat.color}`} />
                        </div>
                        <div className="text-xs font-bold text-gray-400 uppercase tracking-widest leading-none">
                            {stat.label}
                        </div>
                    </div>
                    <div className="text-2xl font-black text-gray-900 tracking-tight">
                        {stat.value}
                    </div>
                    <div className="mt-2 flex items-center gap-1">
                        <div className="w-1 h-1 bg-gray-300 rounded-full" />
                        <span className="text-[10px] font-bold text-gray-400 uppercase">Live Update</span>
                    </div>
                </div>
            ))}
        </div>
    );
};

export default StatCards;
