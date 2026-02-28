'use client';

import { create } from 'zustand';
import { persist } from 'zustand/middleware';

interface AuthState {
    isLoggedIn: boolean;
    token: string | null;
    setAuth: (token: string) => void;
    clearAuth: () => void;
}

export const useAuthStore = create<AuthState>()(
    persist(
        (set) => ({
            isLoggedIn: false,
            token: null,
            setAuth: (token: string) => set({ isLoggedIn: true, token }),
            clearAuth: () => set({ isLoggedIn: false, token: null }),
        }),
        {
            name: 'mediunit-auth',
        }
    )
);
