'use client';

import React, { useState, useEffect } from 'react';
import { ChevronUp } from 'lucide-react';

export default function BackToTop() {
    const [isVisible, setIsVisible] = useState(false);

    useEffect(() => {
        const toggleVisibility = () => {
            if (window.pageYOffset > 300) {
                setIsVisible(true);
            } else {
                setIsVisible(false);
            }
        };

        window.addEventListener('scroll', toggleVisibility);
        return () => window.removeEventListener('scroll', toggleVisibility);
    }, []);

    const scrollToTop = () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth',
        });
    };

    return (
        <>
            {isVisible && (
                <button
                    onClick={scrollToTop}
                    className="fixed bottom-24 right-6 md:bottom-12 md:right-12 z-[60] p-4 bg-medical-blue text-white rounded-2xl shadow-[0_20px_50px_rgba(0,74,153,0.3)] transform transition-all duration-500 hover:scale-110 active:scale-95 group border border-white/20 backdrop-blur-md animate-in fade-in slide-in-from-bottom-4"
                    aria-label="Back to top"
                >
                    <ChevronUp className="w-6 h-6 group-hover:-translate-y-1 transition-transform duration-300" />
                </button>
            )}
        </>
    );
}
