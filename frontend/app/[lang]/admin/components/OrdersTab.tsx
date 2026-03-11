'use client';

import React from 'react';
import { Search, Clock, ChevronRight, Download, Package } from 'lucide-react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface OrdersTabProps {
    orders: any[];
    searchTerm: string;
    setSearchTerm: (s: string) => void;
    orderStatusFilter: string;
    setOrderStatusFilter: (s: string) => void;
    ordersLimit: number;
    setOrdersLimit: (n: number) => void;
    ordersOffset: number;
    setOrdersOffset: (n: number) => void;
    handleUpdateStatus: (id: string, status: string) => Promise<void>;
    openOrderModal: (order: any) => void;
    handleApplyFilters: () => Promise<void>;
    handlePageChange: (newOffset: number) => Promise<void>;
}

const OrdersTab: React.FC<OrdersTabProps> = ({
    orders,
    searchTerm,
    setSearchTerm,
    orderStatusFilter,
    setOrderStatusFilter,
    ordersLimit,
    setOrdersLimit,
    ordersOffset,
    setOrdersOffset,
    handleUpdateStatus,
    openOrderModal,
    handleApplyFilters,
    handlePageChange
}) => {
    const { t } = useLanguageStore();

    const getStatusStyles = (status: string) => {
        switch (status) {
            case 'pending': return 'bg-amber-100 text-amber-800 border-amber-200';
            case 'processing': return 'bg-blue-100 text-blue-800 border-blue-200';
            case 'shipped': return 'bg-indigo-100 text-indigo-800 border-indigo-200';
            case 'delivered': return 'bg-emerald-100 text-emerald-800 border-emerald-200';
            case 'cancelled': return 'bg-red-100 text-red-800 border-red-200';
            default: return 'bg-gray-100 text-gray-800 border-gray-200';
        }
    };

    return (
        <div className="bg-white rounded-3xl shadow-sm border border-gray-100 overflow-hidden transition-all duration-300">
            {/* Filters Header */}
            <div className="px-8 py-6 border-b border-gray-50 flex flex-col xl:flex-row xl:items-center gap-4 justify-between bg-gray-50/30">
                <div className="flex flex-wrap items-center gap-3">
                    <div className="relative group">
                        <Search className="w-4 h-4 text-gray-400 absolute left-4 top-1/2 -translate-y-1/2 group-focus-within:text-medical-blue transition-colors" />
                        <input
                            value={searchTerm}
                            onChange={(e) => setSearchTerm(e.target.value)}
                            onKeyDown={(e) => e.key === 'Enter' && handleApplyFilters()}
                            placeholder={t('ID / Email / Clinique', 'ID / Email / Clinic')}
                            className="pl-11 pr-4 py-3 bg-white border border-gray-200 rounded-2xl text-sm font-semibold w-72 focus:ring-4 focus:ring-medical-blue/5 focus:border-medical-blue outline-none transition-all shadow-sm shadow-gray-100"
                        />
                    </div>
                    <select
                        value={orderStatusFilter}
                        onChange={(e) => setOrderStatusFilter(e.target.value)}
                        className="bg-white border border-gray-200 rounded-2xl px-4 py-3 text-sm font-bold text-gray-700 outline-none focus:ring-4 focus:ring-medical-blue/5 transition-all shadow-sm"
                    >
                        <option value="">{t('Tous les statuts', 'All Statuses')}</option>
                        <option value="pending">{t('En attente', 'Pending')}</option>
                        <option value="processing">{t('Traitement', 'Processing')}</option>
                        <option value="shipped">{t('Expédiée', 'Shipped')}</option>
                        <option value="delivered">{t('Livrée', 'Delivered')}</option>
                        <option value="cancelled">{t('Annulée', 'Cancelled')}</option>
                    </select>
                    <select
                        value={ordersLimit}
                        onChange={(e) => setOrdersLimit(parseInt(e.target.value))}
                        className="bg-white border border-gray-200 rounded-2xl px-4 py-3 text-sm font-bold text-gray-700 outline-none transition-all shadow-sm"
                    >
                        <option value={10}>10 / page</option>
                        <option value={25}>25 / page</option>
                        <option value={50}>50 / page</option>
                    </select>
                </div>
                <button
                    onClick={handleApplyFilters}
                    className="bg-medical-blue hover:bg-medical-blue-dark text-white px-8 py-3 rounded-2xl text-sm font-black transition-all shadow-lg shadow-medical-blue/20 active:scale-95 flex items-center justify-center gap-2"
                >
                    {t('Actualiser', 'Refresh')}
                </button>
            </div>

            {/* Content */}
            <div className="overflow-x-auto">
                <table className="w-full text-left">
                    <thead>
                        <tr className="bg-gray-50/50 text-[11px] font-black text-gray-400 uppercase tracking-[0.15em] border-b border-gray-50">
                            <th className="px-8 py-5">Order ID</th>
                            <th className="px-8 py-5">Date & Time</th>
                            <th className="px-8 py-5">Clinic Details</th>
                            <th className="px-8 py-5">Amount (MAD)</th>
                            <th className="px-8 py-5">Live Status</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-gray-50">
                        {orders.map((order) => (
                            <tr
                                key={order.id}
                                className="group hover:bg-medical-blue/[0.01] transition-colors cursor-pointer"
                                onClick={() => openOrderModal(order)}
                            >
                                <td className="px-8 py-6">
                                    <span className="font-mono font-black text-gray-900 leading-none">
                                        #{order.id.toString().slice(0, 8)}
                                    </span>
                                </td>
                                <td className="px-8 py-6">
                                    <div className="flex items-center gap-2 text-gray-600 font-semibold mb-1">
                                        <Clock className="w-3.5 h-3.5 text-gray-300" />
                                        {new Date(order.created_at).toLocaleDateString()}
                                    </div>
                                    <div className="text-[11px] font-black text-gray-400 ml-5">
                                        {new Date(order.created_at).toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })}
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    <div className="font-black text-gray-900 leading-tight mb-1">
                                        {order.user_clinic_name || t('Invité', 'Guest')}
                                    </div>
                                    <div className="text-xs font-semibold text-gray-400">
                                        {order.user_email || '-'}
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    <div className="font-black text-gray-900 text-base">
                                        {Number(order.total_amount).toLocaleString()}
                                    </div>
                                </td>
                                <td className="px-8 py-6" onClick={(e) => e.stopPropagation()}>
                                    <div className="flex items-center gap-4">
                                        <select
                                            value={order.status}
                                            onChange={(e) => handleUpdateStatus(order.id, e.target.value)}
                                            className={`px-4 py-2 rounded-xl text-xs font-black border transition-all outline-none focus:ring-4 focus:ring-medical-blue/10 ${getStatusStyles(order.status)}`}
                                        >
                                            <option value="pending">PENDING</option>
                                            <option value="processing">PROCESSING</option>
                                            <option value="shipped">SHIPPED</option>
                                            <option value="delivered">DELIVERED</option>
                                            <option value="cancelled">CANCELLED</option>
                                        </select>
                                        <ChevronRight className="w-5 h-5 text-gray-200 group-hover:text-medical-blue transition-colors group-hover:translate-x-1" />
                                    </div>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>

            {/* Pagination Footer */}
            <div className="px-8 py-6 border-t border-gray-50 flex items-center justify-between bg-white">
                <div className="text-xs font-black text-gray-400 uppercase tracking-widest">
                    Window: {ordersOffset} — {ordersOffset + orders.length}
                </div>
                <div className="flex gap-3">
                    <button
                        onClick={() => handlePageChange(Math.max(0, ordersOffset - ordersLimit))}
                        disabled={ordersOffset === 0}
                        className="px-6 py-2.5 rounded-2xl border border-gray-200 text-sm font-black text-gray-700 hover:bg-gray-50 transition-all disabled:opacity-30 disabled:pointer-events-none active:scale-95"
                    >
                        {t('Précédent', 'Previous')}
                    </button>
                    <button
                        onClick={() => handlePageChange(ordersOffset + ordersLimit)}
                        className="px-6 py-2.5 rounded-2xl border border-gray-200 text-sm font-black text-gray-700 hover:bg-gray-50 transition-all active:scale-95"
                    >
                        {t('Suivant', 'Next')}
                    </button>
                </div>
            </div>
        </div>
    );
};

export default OrdersTab;
