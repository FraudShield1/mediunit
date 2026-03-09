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

export default function Logo({ className = '', width = 40, height = 40, showText = true }: LogoProps) {
    return (
        <Link href="/" className={`flex items-center gap-3 group transition-all ${className}`}>
            {/* Icon container — drop shadow tinted to brand blue, no extra border-radius
                since the PNG already has its own perfectly-rounded corners */}
            <div
                className="relative flex-shrink-0"
                style={{
                    filter: 'drop-shadow(0 4px 12px rgba(0, 74, 153, 0.25))',
                    transition: 'filter 0.3s ease',
                }}
                onMouseEnter={(e) => {
                    (e.currentTarget as HTMLElement).style.filter =
                        'drop-shadow(0 6px 18px rgba(0, 74, 153, 0.40))';
                }}
                onMouseLeave={(e) => {
                    (e.currentTarget as HTMLElement).style.filter =
                        'drop-shadow(0 4px 12px rgba(0, 74, 153, 0.25))';
                }}
            >
                <Image
                    src="/logo.png?v=2"
                    alt="MediUnit Logo"
                    width={width}
                    height={height}
                    className="object-contain"
                    priority
                    quality={95}
                />
            </div>

            {showText && (
                <div className="flex flex-col leading-none">
                    <span className="text-[18px] font-black text-slate-gray-dark tracking-tight group-hover:text-medical-blue transition-colors duration-200">
                        Medi<span className="text-medical-blue">Unit</span>
                    </span>
                    <span className="text-[9px] font-black text-medical-blue/70 uppercase tracking-[0.2em] mt-[3px]">
                        Morocco
                    </span>
                </div>
            )}
        </Link>
    );
}
