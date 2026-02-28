'use client';

import React from 'react';
import { Home, Search, RefreshCcw, User, ShoppingCart } from 'lucide-react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';

export default function BottomNav() {
    const pathname = usePathname();

    const navItems = [
        { icon: Home, label: 'Accueil', href: '/' },
        { icon: Search, label: 'Chercher', href: '/search' },
        { icon: ShoppingCart, label: 'Ma Commande', href: '/cart' },
        { icon: RefreshCcw, label: 'Réappro', href: '/dashboard' },
        { icon: User, label: 'Mon Espace', href: '/dashboard' },
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
                            className={`flex flex-col items-center justify-center gap-1 min-w-[48px] min-h-[48px] px-2 transition-colors ${isActive ? 'text-medical-blue' : 'text-slate-gray-light'
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
