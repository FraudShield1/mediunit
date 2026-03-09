const API_URL = process.env.NEXT_PUBLIC_API_URL || 'https://mediunit-backend.a-naouri.workers.dev/api/v1';

// Helper to get token natively from localStorage (Zustand persists it here)
function getAuthToken() {
    if (typeof window === 'undefined') return null;
    try {
        const storage = localStorage.getItem('auth-storage');
        if (storage) {
            const parsed = JSON.parse(storage);
            return parsed.state?.token || null;
        }
    } catch (e) { console.error('Error reading auth string', e); }
    return null;
}

function getAuthHeaders(): HeadersInit {
    const token = getAuthToken();
    return token ? { 'Authorization': `Bearer ${token}` } : {};
}

export async function login(email: string, password: string) {
    const params = new URLSearchParams();
    params.append('username', email);
    params.append('password', password);
    const res = await fetch(`${API_URL}/auth/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: params,
    });
    if (!res.ok) throw new Error('Incorrect email or password');
    const data = await res.json();
    // Set a session cookie so middleware can protect routes
    if (typeof document !== 'undefined' && data.token) {
        document.cookie = `mediunit_token=${data.token}; path=/; max-age=${24 * 60 * 60}; SameSite=Lax`;
    }
    return data;
}

export function logout() {
    // JWT is stateless — just clear the client-side cookie
    if (typeof document !== 'undefined') {
        document.cookie = 'mediunit_token=; path=/; max-age=0';
    }
}

export async function register(userData: any) {
    const res = await fetch(`${API_URL}/auth/register`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(userData)
    });
    if (!res.ok) throw new Error('Registration failed');
    return res.json();
}

export async function fetchCategories() {
    const res = await fetch(`${API_URL}/categories`, { next: { revalidate: 0 } });
    if (!res.ok) throw new Error('Failed to fetch categories');
    return res.json();
}

export async function fetchProducts(categorySlug?: string, search?: string) {
    let url = `${API_URL}/products`;
    const params = new URLSearchParams();
    if (categorySlug) params.append('category_slug', categorySlug);
    if (search) params.append('search', search);

    if (params.toString()) {
        url += `?${params.toString()}`;
    }

    const res = await fetch(url, { next: { revalidate: 0 } });
    if (!res.ok) throw new Error('Failed to fetch products');
    return res.json();
}

export async function fetchProductBySlug(slug: string) {
    const res = await fetch(`${API_URL}/products/${slug}`, { next: { revalidate: 0 } });
    if (!res.ok) throw new Error('Failed to fetch product');
    return res.json();
}

// Admin Exports
export async function fetchAdminOrders() {
    const res = await fetch(`${API_URL}/orders/admin/all`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch admin orders');
    return res.json();
}

export async function fetchAdminUsers() {
    const res = await fetch(`${API_URL}/users/`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch admin users');
    return res.json();
}

export async function updateOrderStatus(orderId: string, status: string) {
    const res = await fetch(`${API_URL}/orders/${orderId}/status?status=${status}`, {
        method: 'PATCH',
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to update order status');
    return res.json();
}

// User Dashboard Exports
export async function fetchDashboardSummary() {
    const res = await fetch(`${API_URL}/dashboard/`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch dashboard summary');
    return res.json();
}

export async function fetchComplianceDocuments() {
    const res = await fetch(`${API_URL}/dashboard/compliance`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch compliance documents');
    return res.json();
}

export async function reorderLastOrder() {
    const res = await fetch(`${API_URL}/dashboard/reorder-last`, {
        method: 'POST',
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to reorder last order');
    return res.json();
}

export async function uploadVerificationLicense(file: File) {
    const formData = new FormData();
    formData.append('file', file);
    const res = await fetch(`${API_URL}/users/verify-upload`, {
        method: 'POST',
        headers: getAuthHeaders(),
        body: formData
    });
    if (!res.ok) throw new Error('Failed to upload medical license');
    return res.json();
}

export async function verifyUser(userId: string) {
    const res = await fetch(`${API_URL}/users/${userId}/verify`, {
        method: 'PATCH',
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to verify user');
    return res.json();
}

export async function createOrder(orderData: any) {
    const res = await fetch(`${API_URL}/orders/`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            ...getAuthHeaders()
        },
        body: JSON.stringify(orderData)
    });
    if (!res.ok) throw new Error('Failed to create order');
    return res.json();
}

export async function fetchOrderInvoice(orderId: string) {
    const res = await fetch(`${API_URL}/orders/${orderId}/invoice`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch invoice');
    return res.json(); // Note: Changed back to json as per previous refactor where backend returns JSON for client-side PDF
}

export async function fetchCompliancePack(orderId: string) {
    const res = await fetch(`${API_URL}/compliance/pack/${orderId}`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch compliance pack');
    return res.blob();
}

// Admin Product CRUD
export async function createProduct(productData: any) {
    const res = await fetch(`${API_URL}/products`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', ...getAuthHeaders() },
        body: JSON.stringify(productData)
    });
    if (!res.ok) throw new Error('Failed to create product');
    return res.json();
}

export async function updateProduct(productId: string, productData: any) {
    const res = await fetch(`${API_URL}/products/${productId}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json', ...getAuthHeaders() },
        body: JSON.stringify(productData)
    });
    if (!res.ok) throw new Error('Failed to update product');
    return res.json();
}

export async function deleteProduct(productId: string) {
    const res = await fetch(`${API_URL}/products/${productId}`, {
        method: 'DELETE',
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to delete product');
    return res.json();
}

export async function fetchBrands() {
    const res = await fetch(`${API_URL}/brands`, { next: { revalidate: 0 } });
    if (!res.ok) return [];
    return res.json();
}

export async function updateBrand(brandId: number, brandData: any) {
    const res = await fetch(`${API_URL}/brands/${brandId}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json', ...getAuthHeaders() },
        body: JSON.stringify(brandData)
    });
    if (!res.ok) throw new Error('Failed to update brand');
    return res.json();
}

export async function fetchAdminStats() {
    const res = await fetch(`${API_URL}/dashboard/`, {
        headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Failed to fetch stats');
    return res.json();
}
