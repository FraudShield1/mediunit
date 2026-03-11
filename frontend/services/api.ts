// Centralized API Service for MediUnit
// This replaces scattered fetch calls across components to ensure consistent base URLs,
// error handling, token injection, and response parsing.

export const API_BASE_URL = process.env.NEXT_PUBLIC_API_URL || 'https://api.mediunit.ma/api/v1';

export class ApiError extends Error {
    constructor(public status: number, message: string) {
        super(message);
        this.name = 'ApiError';
    }
}

/**
 * Core generic fetch wrapper
 */
export async function fetchClient<T = any>(endpoint: string, options: RequestInit = {}): Promise<T> {
    const url = `${API_BASE_URL}${endpoint}`;
    
    const headers: Record<string, string> = {
        'Content-Type': 'application/json',
        ...(options.headers as Record<string, string> || {}),
    };

    let token = null;
    if (typeof window !== 'undefined') {
        try {
            const candidates = [
                localStorage.getItem('mediunit-auth'),
                localStorage.getItem('auth-storage'),
                localStorage.getItem('token')
            ].filter(Boolean) as string[];

            for (const storage of candidates) {
                // If the item itself is the token (not JSON), we could check that, but Zustand stores JSON objects
                try {
                    const parsed = JSON.parse(storage);
                    token = parsed?.state?.token || parsed?.token || null;
                    if (token) break;
                } catch {
                    // Raw string
                    token = storage;
                    break;
                }
            }
        } catch (e) { console.error('Error reading auth string', e); }
    }

    if (token) {
        headers['Authorization'] = `Bearer ${token}`;
    }

    const config: RequestInit = {
        ...options,
        headers,
    };

    const response = await fetch(url, config);

    // Some endpoints may return empty 204s or non-JSON
    const isJson = response.headers.get('content-type')?.includes('application/json');
    const data = isJson ? await response.json() : await response.text();

    if (!response.ok) {
        throw new ApiError(response.status, data?.error || 'An unexpected error occurred');
    }

    return data as T;
}

// --- API Module Methods ---

export const ApiService = {
    Products: {
        getAll: () => fetchClient<any[]>('/products'),
        getBySlug: (slug: string) => fetchClient<any>(`/products/${slug}`),
        getKits: () => fetchClient<any[]>('/kits'),
        getSettings: () => fetchClient<any>('/public/settings'),
    },
    Auth: {
        login: (credentials: any) => fetchClient<any>('/auth/login', { method: 'POST', body: JSON.stringify(credentials) }),
        getProfile: () => fetchClient<any>('/auth/profile'),
    },
    Orders: {
        create: (checkoutData: any) => fetchClient<any>('/orders', { method: 'POST', body: JSON.stringify(checkoutData) }),
        getDashboard: () => fetchClient<any>('/dashboard'),
    }
};
