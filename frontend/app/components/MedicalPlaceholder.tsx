import React from 'react';

export default function MedicalPlaceholder({ className = '' }: { className?: string }) {
    return (
        <svg
            className={`w-full h-full text-slate-gray-light/50 ${className}`}
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            strokeWidth="1.5"
            strokeLinecap="round"
            strokeLinejoin="round"
        >
            <rect x="3" y="7" width="18" height="13" rx="2" ry="2"></rect>
            <path d="M8 7V5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
            <path d="M12 11v4"></path>
            <path d="M10 13h4"></path>
        </svg>
    );
}
