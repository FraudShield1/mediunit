import { fetchClient, API_BASE_URL } from '../../services/api';

const WORKER_URL = process.env.NEXT_PUBLIC_WORKER_URL || '';

export function resolveImageUrl(path: string | undefined | null) {
    if (!path || path === '/') return '';
    if (path.startsWith('http')) return path;
    
    // Map local Next.js /images/ to the R2 API directly
    if (path.startsWith('/images/')) {
        path = `/api/v1${path}`;
    }

    if (path.startsWith('/api/v1/images/')) {
        return WORKER_URL ? `${WORKER_URL}${path}` : path;
    }
    if (path.startsWith('/api/v1/')) {
        const base = API_BASE_URL.replace('/api/v1', '');
        return base ? `${base}${path}` : path;
    }
    return path;
}

// Token getter explicitly for headers directly needed by blob endpoints
function getAuthToken() {
    if (typeof window === 'undefined') return null;
    try {
        const candidates = [
            localStorage.getItem('mediunit-auth'),
            localStorage.getItem('auth-storage'),
            localStorage.getItem('token')
        ].filter(Boolean) as string[];

        for (const storage of candidates) {
            try {
                const parsed = JSON.parse(storage);
                const token = parsed?.state?.token || parsed?.token || null;
                if (token) return token;
            } catch {
                return storage;
            }
        }
    } catch (e) { console.error('Error reading auth string', e); }
    return null;
}

function getAuthHeaders(): HeadersInit {
    const token = getAuthToken();
    return token ? { 'Authorization': `Bearer ${token}` } : {};
}

// --- Auth ---
export async function login(email: string, password: string) {
    const params = new URLSearchParams();
    params.append('username', email);
    params.append('password', password);
    
    const res = await fetch(`${API_BASE_URL}/auth/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: params,
    });
    
    if (!res.ok) {
        let msg = 'Incorrect email or password';
        try { const d = await res.json(); if (d.error) msg = d.error; } catch(e){}
        throw new Error(msg);
    }
    
    const data = await res.json();
    if (typeof document !== 'undefined' && data.token) {
        document.cookie = `mediunit_token=${data.token}; path=/; max-age=${24 * 60 * 60}; SameSite=Lax`;
    }
    return data;
}

export function logout() {
    if (typeof document !== 'undefined') {
        document.cookie = 'mediunit_token=; path=/; max-age=0';
    }
}

export async function register(userData: any) {
    return fetchClient('/auth/register', {
        method: 'POST',
        body: JSON.stringify(userData)
    });
}

export async function requestPasswordReset(email: string, lang: string = 'fr') {
    return fetchClient('/auth/forgot-password', {
        method: 'POST',
        body: JSON.stringify({ email, lang })
    });
}

export async function resetPassword(token: string, new_password: string) {
    return fetchClient('/auth/reset-password', {
        method: 'POST',
        body: JSON.stringify({ token, new_password })
    });
}

// --- Public ---
export async function fetchCategories() {
    return fetchClient('/categories');
}

export async function fetchProducts(categorySlug?: string, search?: string) {
    const params = new URLSearchParams();
    if (categorySlug) params.append('category_slug', categorySlug);
    if (search) params.append('search', search);

    const qs = params.toString() ? `?${params.toString()}` : '';
    return fetchClient(`/products${qs}`);
}

export async function fetchProductBySlug(slug: string) {
    return fetchClient(`/products/${slug}`);
}

export async function fetchPublicSettings() {
    return fetchClient('/public/settings');
}

// --- Admin Orders ---
export async function fetchAdminOrders(params?: { status?: string; q?: string; limit?: number; offset?: number }) {
    const usp = new URLSearchParams();
    if (params?.status) usp.append('status', params.status);
    if (params?.q) usp.append('q', params.q);
    if (typeof params?.limit === 'number') usp.append('limit', String(params.limit));
    if (typeof params?.offset === 'number') usp.append('offset', String(params.offset));

    const qs = usp.toString() ? `?${usp.toString()}` : '';
    return fetchClient(`/orders/admin/all${qs}`);
}

export async function fetchAdminOrderById(orderId: string | number) {
    return fetchClient(`/orders/admin/${orderId}`);
}

export async function updateOrderStatus(orderId: string, status: string) {
    return fetchClient(`/orders/${orderId}/status?status=${status}`, { method: 'PATCH' });
}

// --- Admin Users ---
export async function fetchAdminUsers() {
    return fetchClient('/users/');
}

export async function verifyUser(userId: string) {
    return fetchClient(`/users/${userId}/verify`, { method: 'PATCH' });
}

export async function rejectUser(userId: string, reason: string) {
    return fetchClient(`/users/${userId}/reject`, {
        method: 'PATCH',
        body: JSON.stringify({ reason })
    });
}

// --- Dashboard ---
export async function fetchDashboardSummary() {
    return fetchClient('/dashboard/');
}

export async function fetchComplianceDocuments() {
    return fetchClient('/dashboard/compliance');
}

export async function reorderLastOrder() {
    return fetchClient('/dashboard/reorder-last', { method: 'POST' });
}

export async function fetchUserProfile() {
    return fetchClient('/auth/profile');
}

export async function updateUserProfile(profileData: any) {
    return fetchClient('/auth/profile', {
        method: 'PATCH',
        body: JSON.stringify(profileData)
    });
}

export async function createOrder(orderData: any) {
    return fetchClient('/orders/', {
        method: 'POST',
        body: JSON.stringify(orderData)
    });
}

// --- Blobs & FormData (using raw fetch for specialized handling) ---
export async function uploadVerificationLicense(file: File) {
    const formData = new FormData();
    formData.append('file', file);
    const res = await fetch(`${API_BASE_URL}/users/verify-upload`, {
        method: 'POST',
        headers: getAuthHeaders(),
        body: formData
    });
    if (!res.ok) throw new Error('Failed to upload medical license');
    return res.json();
}

export async function fetchOrderInvoice(orderId: string) {
    return fetchClient(`/orders/${orderId}/invoice`);
}

export async function fetchOrderInvoicePdfBlob(orderId: string) {
    const res = await fetch(`${API_BASE_URL}/orders/${orderId}/invoice`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch invoice PDF');
    return res.blob();
}

export async function fetchUserVerificationLicenseBlob(licenseUrl: string) {
    const absoluteUrl = licenseUrl.startsWith('http')
        ? licenseUrl
        : `${API_BASE_URL.replace('/api/v1', '')}${licenseUrl}`;
    const res = await fetch(absoluteUrl, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch verification license');
    return res.blob();
}

export async function fetchCompliancePack(orderId: string) {
    const res = await fetch(`${API_BASE_URL}/orders/pack/${orderId}`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch compliance pack');
    return res.blob();
}

// --- Admin Products & Brands ---
export async function createProduct(productData: any) {
    return fetchClient('/products', { method: 'POST', body: JSON.stringify(productData) });
}

export async function updateProduct(productId: string, productData: any) {
    return fetchClient(`/products/${productId}`, { method: 'PUT', body: JSON.stringify(productData) });
}

export async function deleteProduct(productId: string) {
    return fetchClient(`/products/${productId}`, { method: 'DELETE' });
}

export async function fetchBrands() {
    try {
        return await fetchClient('/brands');
    } catch { return []; }
}

export async function createBrand(brandData: any) {
    return fetchClient('/brands', { method: 'POST', body: JSON.stringify(brandData) });
}

export async function updateBrand(brandId: number, brandData: any) {
    return fetchClient(`/brands/${brandId}`, { method: 'PUT', body: JSON.stringify(brandData) });
}

export async function deleteBrand(brandId: number) {
    return fetchClient(`/brands/${brandId}`, { method: 'DELETE' });
}

// --- Admin Settings & Stats ---
export async function fetchAdminDashboardSummary() {
    return fetchClient('/dashboard/admin/summary');
}

export async function fetchAdminStats() {
    return fetchClient('/dashboard/');
}

export async function fetchAdminSettings() {
    return fetchClient('/admin/settings');
}

export async function updateAdminSettings(updates: any[]) {
    return fetchClient('/admin/settings', {
        method: 'PATCH',
        body: JSON.stringify({ updates })
    });
}
