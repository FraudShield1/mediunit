const API_URL = process.env.NEXT_PUBLIC_API_URL || 'https://mediunit-backend.a-naouri.workers.dev/api/v1';

export async function login(email: string, password: string) {
    const params = new URLSearchParams();
    params.append('username', email);
    params.append('password', password);
    const res = await fetch(`${API_URL}/auth/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: params,
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Incorrect email or password');
    return res.json();
}

export async function logout() {
    const res = await fetch(`${API_URL}/auth/logout`, {
        method: 'POST',
        credentials: 'include'
    });
    return res.json();
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
    const res = await fetch(`${API_URL}/categories`);
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

    const res = await fetch(url);
    if (!res.ok) throw new Error('Failed to fetch products');
    return res.json();
}

export async function fetchProductBySlug(slug: string) {
    const res = await fetch(`${API_URL}/products/${slug}`);
    if (!res.ok) throw new Error('Failed to fetch product');
    return res.json();
}

// Admin Exports
export async function fetchAdminOrders() {
    const res = await fetch(`${API_URL}/orders/admin/all`, {
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to fetch admin orders');
    return res.json();
}

export async function fetchAdminUsers() {
    const res = await fetch(`${API_URL}/users/`, {
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to fetch admin users');
    return res.json();
}

export async function updateOrderStatus(orderId: string, status: string) {
    const res = await fetch(`${API_URL}/orders/${orderId}/status?status=${status}`, {
        method: 'PATCH',
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to update order status');
    return res.json();
}

// User Dashboard Exports
export async function fetchDashboardSummary() {
    const res = await fetch(`${API_URL}/dashboard/`, {
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to fetch dashboard summary');
    return res.json();
}

export async function fetchComplianceDocuments() {
    const res = await fetch(`${API_URL}/dashboard/compliance`, {
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to fetch compliance documents');
    return res.json();
}

export async function reorderLastOrder() {
    const res = await fetch(`${API_URL}/dashboard/reorder-last`, {
        method: 'POST',
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to reorder last order');
    return res.json();
}

export async function uploadVerificationLicense(file: File) {
    const formData = new FormData();
    formData.append('file', file);
    const res = await fetch(`${API_URL}/users/verify-upload`, {
        method: 'POST',
        credentials: 'include',
        body: formData
    });
    if (!res.ok) throw new Error('Failed to upload medical license');
    return res.json();
}

export async function verifyUser(userId: string) {
    const res = await fetch(`${API_URL}/users/${userId}/verify`, {
        method: 'PATCH',
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to verify user');
    return res.json();
}

export async function createOrder(orderData: any) {
    const res = await fetch(`${API_URL}/orders/`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        credentials: 'include',
        body: JSON.stringify(orderData)
    });
    if (!res.ok) throw new Error('Failed to create order');
    return res.json();
}

export async function fetchOrderInvoice(orderId: string) {
    const res = await fetch(`${API_URL}/orders/${orderId}/invoice`, {
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to fetch invoice');
    return res.json(); // Note: Changed back to json as per previous refactor where backend returns JSON for client-side PDF
}

export async function fetchCompliancePack(orderId: string) {
    const res = await fetch(`${API_URL}/compliance/pack/${orderId}`, {
        credentials: 'include'
    });
    if (!res.ok) throw new Error('Failed to fetch compliance pack');
    return res.blob();
}
