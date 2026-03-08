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

export default function Logo({ className = '', width = 48, height = 48, showText = true }: LogoProps) {
    return (
        <Link href="/" className={`flex items-center gap-2.5 group transition-all hover:opacity-90 ${className}`}>
            <div className="relative flex-shrink-0">
                <Image
                    src="/logo.png"
                    alt="MediUnit Logo"
                    width={width}
                    height={height}
                    className="object-contain rounded-xl shadow-sm"
                    priority
                />
            </div>
            {showText && (
                <div className="flex flex-col">
                    <span className="text-xl font-black text-slate-gray-dark tracking-tight leading-none group-hover:text-medical-blue transition-colors">
                        MediUnit
                    </span>
                    <span className="text-[10px] font-black text-medical-blue uppercase tracking-widest leading-none mt-1 opacity-80">
                        Morocco
                    </span>
                </div>
            )}
        </Link>
    );
}
