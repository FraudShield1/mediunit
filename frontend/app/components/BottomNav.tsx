'use client';

import React from 'react';
import { Home, Search, RefreshCcw, User, ShoppingCart } from 'lucide-react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useLanguageStore } from '@/app/store/useLanguageStore';

export default function BottomNav() {
    const pathname = usePathname();
    const { t } = useLanguageStore();

    const navItems = [
        { icon: Home, label: t('Accueil', 'Home'), href: '/' },
        { icon: ShoppingCart, label: t('Ma Commande', 'My Order'), href: '/cart' },
        { icon: User, label: t('Mon Espace', 'My Account'), href: '/dashboard' },
    ];

    return (
        <nav className="fixed bottom-0 left-0 right-0 z-[100] bg-white/90 backdrop-blur-lg border-t border-slate-gray-light/10 md:hidden pb-safe">
            <div className="flex justify-around items-center h-16 px-2">
                {navItems.map((item) => {
                    const isActive = pathname === item.href;
                    return (
                        <Link
                            key={item.label}
                            href={item.href}
                            aria-label={item.label}
                            onClick={(e) => {
                                if (isActive) {
                                    e.preventDefault();
                                    window.scrollTo({ top: 0, behavior: 'smooth' });
                                }
                            }}
                            className={`flex flex-col items-center justify-center gap-1 min-w-[48px] min-h-[48px] px-2 transition-colors ${isActive ? 'text-medical-blue' : 'text-slate-gray'
                                }`}
                        >
                            <item.icon className={`w-5 h-5 ${isActive ? 'fill-medical-blue/10' : ''}`} />
                            <span className="text-[10px] font-black uppercase tracking-tighter">{item.label}</span>
                        </Link>
                    );
                })}
            </div>
        </nav>
    );
}
