'use client';

import React from 'react';
import Image from 'next/image';
import Link from 'next/link';

interface LogoProps {
    className?: string;
    width?: number;
    height?: number;
    showText?: boolean;
}

export default function Logo({ className = '', width = 120, height = 40, showText = true }: LogoProps) {
    return (
        <Link href="/" className={`flex items-center gap-2 group transition-opacity hover:opacity-90 ${className}`}>
            <div className="relative overflow-hidden rounded-lg shadow-sm border border-slate-gray-light/10">
                <Image
                    src="/logo.png"
                    alt="MediUnit Logo"
                    width={width}
                    height={height}
                    className="object-contain"
                    priority
                />
            </div>
        </Link>
    );
}
