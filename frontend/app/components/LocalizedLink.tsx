'use client';

import React from 'react';
import Link, { LinkProps } from 'next/link';
import { useLanguageStore } from '@/app/store/useLanguageStore';

interface LocalizedLinkProps extends Omit<React.AnchorHTMLAttributes<HTMLAnchorElement>, keyof LinkProps>, LinkProps {
    children: React.ReactNode;
}

export default function LocalizedLink({ href, children, ...props }: LocalizedLinkProps) {
    const { language } = useLanguageStore();
    
    let localizedHref = href;
    if (typeof href === 'string') {
        if (href.startsWith('/') && !href.startsWith('/api')) {
            // Check if it already has a language prefix
            if (!href.startsWith('/fr/') && !href.startsWith('/en/') && href !== '/fr' && href !== '/en') {
                localizedHref = href === '/' ? `/${language}` : `/${language}${href}`;
            }
        }
    }

    return (
        <Link href={localizedHref} {...props}>
            {children}
        </Link>
    );
}
