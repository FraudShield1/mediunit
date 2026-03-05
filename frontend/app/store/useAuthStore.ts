'use client';

import { create } from 'zustand';
import { persist } from 'zustand/middleware';

interface AuthState {
    isLoggedIn: boolean;
    token: string | null;
    userName: string | null;
    clinicName: string | null;
    setAuth: (token: string, user?: { full_name: string; clinic_name: string }) => void;
    clearAuth: () => void;
}

export const useAuthStore = create<AuthState>()(
    persist(
        (set) => ({
            isLoggedIn: false,
            token: null,
            userName: null,
            clinicName: null,
            setAuth: (token, user) => set({
                isLoggedIn: true,
                token,
                userName: user?.full_name || null,
                clinicName: user?.clinic_name || null
            }),
            clearAuth: () => set({ isLoggedIn: false, token: null, userName: null, clinicName: null }),
        }),
        {
            name: 'mediunit-auth',
        }
    )
);
