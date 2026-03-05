'use client';

import React from 'react';
import { LucideIcon } from 'lucide-react';
import Link from 'next/link';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface EmptyStateProps {
    icon: LucideIcon;
    title: string;
    description: string;
    actionLabel?: string;
    actionHref?: string;
}

export default function EmptyState({ icon: Icon, title, description, actionLabel, actionHref }: EmptyStateProps) {
    const { t } = useLanguageStore();

    return (
        <div className="text-center py-20 px-6 bg-white rounded-[3rem] border border-slate-gray-light/20 shadow-xl shadow-medical-blue/5 animate-in fade-in zoom-in duration-500">
            <div className="relative w-32 h-32 mx-auto mb-8 group flex items-center justify-center">
                {/* Decorative background layers */}
                <div className="absolute inset-0 bg-medical-blue/5 rounded-full blur-xl group-hover:blur-2xl transition-all duration-700"></div>
                <div className="absolute inset-2 bg-gradient-to-tr from-medical-blue/10 to-medical-blue/5 rounded-[2.5rem] rotate-3 group-hover:rotate-12 transition-all duration-700"></div>
                <div className="absolute inset-2 bg-white rounded-[2.5rem] -rotate-3 group-hover:-rotate-6 shadow-sm transition-all duration-700 border border-slate-gray-light/10"></div>

                {/* Icon Container */}
                <div className="relative z-10 w-16 h-16 bg-gradient-to-br from-white to-medical-blue/5 border border-white rounded-2xl flex items-center justify-center shadow-lg shadow-medical-blue/10 group-hover:scale-110 transition-transform duration-500">
                    <Icon className="w-8 h-8 text-medical-blue group-hover:animate-pulse hidden-on-mobile:stroke-[1.5px]" strokeWidth={1.5} />
                </div>

                {/* Floating Elements */}
                <div className="absolute top-0 right-4 w-2 h-2 bg-sage-green/40 rounded-full group-hover:-translate-y-2 group-hover:translate-x-2 transition-transform duration-700"></div>
                <div className="absolute bottom-2 left-2 w-3 h-3 bg-medical-blue-light/40 rounded-full group-hover:translate-y-2 group-hover:-translate-x-2 transition-transform duration-700"></div>
            </div>
            <h3 className="text-3xl font-black text-slate-gray-dark mb-4 tracking-tight">
                {title}
            </h3>
            <p className="text-slate-gray font-medium mb-10 max-w-sm mx-auto leading-relaxed">
                {description}
            </p>
            {actionLabel && actionHref && (
                <Link
                    href={actionHref}
                    className="inline-flex items-center justify-center px-12 py-5 bg-medical-blue hover:bg-medical-blue-dark active:scale-95 transition-all rounded-2xl text-white font-black uppercase tracking-widest text-sm shadow-xl shadow-medical-blue/20"
                >
                    {actionLabel}
                </Link>
            )}
        </div>
    );
}
