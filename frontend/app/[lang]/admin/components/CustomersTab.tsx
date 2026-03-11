'use client';

import React from 'react';
import { Search, ShieldCheck, UserCheck, UserX, Download, MapPin } from 'lucide-react';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface CustomersTabProps {
    users: any[];
    searchTerm: string;
    setSearchTerm: (s: string) => void;
    customerStatusFilter: string;
    setCustomerStatusFilter: (s: string) => void;
    handleVerifyUser: (id: string) => Promise<void>;
    handleDownloadLicense: (url: string) => Promise<void>;
    setUserToReject: (user: any) => void;
    setIsRejectModalOpen: (open: boolean) => void;
    handleRefreshUsers: () => Promise<void>;
}

const CustomersTab: React.FC<CustomersTabProps> = ({
    users,
    searchTerm,
    setSearchTerm,
    customerStatusFilter,
    setCustomerStatusFilter,
    handleVerifyUser,
    handleDownloadLicense,
    setUserToReject,
    setIsRejectModalOpen,
    handleRefreshUsers
}) => {
    const { t } = useLanguageStore();

    const getStatusStyles = (status: string) => {
        switch (status) {
            case 'verified': return 'bg-emerald-100 text-emerald-800 border-emerald-200';
            case 'rejected': return 'bg-rose-100 text-rose-800 border-rose-200';
            case 'pending': return 'bg-amber-100 text-amber-800 border-amber-200';
            default: return 'bg-gray-100 text-gray-800 border-gray-200';
        }
    };

    const filteredUsers = users
        .filter((u: any) => {
            const s = searchTerm.toLowerCase();
            if (!s) return true;
            return String(u.email || '').toLowerCase().includes(s) ||
                String(u.clinic_name || '').toLowerCase().includes(s) ||
                String(u.inpe_number || '').toLowerCase().includes(s) ||
                String(u.full_name || '').toLowerCase().includes(s);
        })
        .filter((u: any) => (customerStatusFilter ? u.verification_status === customerStatusFilter : true));

    return (
        <div className="bg-white rounded-3xl shadow-sm border border-gray-100 overflow-hidden transition-all duration-300">
            {/* Filters Header */}
            <div className="px-8 py-6 border-b border-gray-50 flex flex-col md:flex-row md:items-center gap-4 justify-between bg-gray-50/30">
                <div className="flex flex-wrap items-center gap-3">
                    <div className="relative group">
                        <Search className="w-4 h-4 text-gray-400 absolute left-4 top-1/2 -translate-y-1/2 group-focus-within:text-medical-blue transition-colors" />
                        <input
                            value={searchTerm}
                            onChange={(e) => setSearchTerm(e.target.value)}
                            placeholder={t('Rechercher...', 'Search: Email / Clinic / INPE')}
                            className="pl-11 pr-4 py-3 bg-white border border-gray-200 rounded-2xl text-sm font-semibold w-80 focus:ring-4 focus:ring-medical-blue/5 focus:border-medical-blue outline-none transition-all shadow-sm shadow-gray-100"
                        />
                    </div>
                    <select
                        value={customerStatusFilter}
                        onChange={(e) => setCustomerStatusFilter(e.target.value)}
                        className="bg-white border border-gray-200 rounded-2xl px-5 py-3 text-sm font-bold text-gray-700 outline-none focus:ring-4 focus:ring-medical-blue/5 transition-all shadow-sm"
                    >
                        <option value="">{t('Tous statuts', 'All Statuses')}</option>
                        <option value="pending">{t('En attente', 'Pending')}</option>
                        <option value="verified">{t('Vérifié', 'Verified')}</option>
                        <option value="rejected">{t('Rejeté', 'Rejected')}</option>
                    </select>
                </div>
                <button
                    onClick={handleRefreshUsers}
                    className="bg-gray-900 hover:bg-black text-white px-8 py-3 rounded-2xl text-sm font-black transition-all shadow-xl shadow-black/10 active:scale-95 flex items-center justify-center gap-2"
                >
                    {t('Rafraîchir', 'Refresh')}
                </button>
            </div>

            {/* Content Swiper / Table */}
            <div className="overflow-x-auto">
                <table className="w-full text-left">
                    <thead>
                        <tr className="bg-gray-50/50 text-[11px] font-black text-gray-400 uppercase tracking-[0.15em] border-b border-gray-50">
                            <th className="px-8 py-5">Practitioner Info</th>
                            <th className="px-8 py-5">Clinic & Location</th>
                            <th className="px-8 py-5">INPE Number</th>
                            <th className="px-8 py-5">Verif. Status</th>
                            <th className="px-8 py-5 text-right">Verification Actions</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-gray-50">
                        {filteredUsers.map((u) => (
                            <tr key={u.id} className="group hover:bg-gray-50/50 transition-colors">
                                <td className="px-8 py-6">
                                    <div className="flex items-center gap-3">
                                        <div className="w-10 h-10 bg-gray-100 rounded-full flex items-center justify-center font-black text-gray-400 text-xs">
                                            {u.full_name?.charAt(0) || 'U'}
                                        </div>
                                        <div>
                                            <div className="font-black text-gray-900 leading-tight mb-1">{u.full_name || '-'}</div>
                                            <div className="text-xs font-semibold text-gray-400">{u.email}</div>
                                        </div>
                                    </div>
                                </td>
                                <td className="px-8 py-6">
                                    <div className="font-black text-gray-900 leading-tight mb-1">{u.clinic_name || '-'}</div>
                                    <div className="flex items-center gap-1.5 text-[11px] font-black text-gray-400 uppercase tracking-wider">
                                        <MapPin className="w-3 h-3 text-gray-300" />
                                        {u.city || 'Casablanca'}
                                    </div>
                                </td>
                                <td className="px-8 py-6 font-mono font-black text-gray-600 tracking-tighter text-sm italic underline decoration-gray-200 decoration-2">
                                    {u.inpe_number || '-'}
                                </td>
                                <td className="px-8 py-6">
                                    <span className={`inline-flex items-center px-4 py-1.5 rounded-full text-[10px] font-black uppercase tracking-widest border transition-all ${getStatusStyles(u.verification_status)}`}>
                                        <ShieldCheck className="w-3 h-3 mr-1.5 opacity-60" />
                                        {u.verification_status}
                                    </span>
                                </td>
                                <td className="px-8 py-6 text-right">
                                    <div className="flex items-center justify-end gap-2">
                                        {u.verification_license_url && (
                                            <button
                                                onClick={() => handleDownloadLicense(u.verification_license_url)}
                                                className="p-2.5 rounded-xl border border-gray-100 text-gray-500 hover:text-medical-blue hover:bg-medical-blue/5 transition-all shadow-sm"
                                                title={t('Voir Licence', 'View License')}
                                            >
                                                <Download className="w-5 h-5" />
                                            </button>
                                        )}
                                        {u.verification_status !== 'verified' && (
                                            <button
                                                onClick={() => handleVerifyUser(u.id)}
                                                className="p-2.5 rounded-xl border border-emerald-100 bg-emerald-50 text-emerald-600 hover:bg-emerald-100 transition-all shadow-sm shadow-emerald-50"
                                                title={t('Vérifier', 'Verify')}
                                            >
                                                <UserCheck className="w-5 h-5" />
                                            </button>
                                        )}
                                        {u.verification_status !== 'rejected' && (
                                            <button
                                                onClick={() => {
                                                    setUserToReject(u);
                                                    setIsRejectModalOpen(true);
                                                }}
                                                className="p-2.5 rounded-xl border border-rose-100 bg-rose-50 text-rose-600 hover:bg-rose-100 transition-all shadow-sm shadow-rose-50"
                                                title={t('Rejeter', 'Reject')}
                                            >
                                                <UserX className="w-5 h-5" />
                                            </button>
                                        )}
                                    </div>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
};

export default CustomersTab;
