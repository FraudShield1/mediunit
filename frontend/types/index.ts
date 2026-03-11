// Global TypeScript Interfaces for MediUnit

export interface Category {
    id: number;
    name: string;
    description: string;
    slug: string;
    image_url: string;
}

export interface Brand {
    id: number;
    name: string;
    slug: string;
    manufacturer: string;
    ce_certificate_url?: string;
}

export interface Product {
    id: number;
    name: string;
    name_en?: string;
    slug: string;
    sku: string;
    description: string;
    description_en?: string;
    base_unit_price: number;
    popularity: number;
    stock_quantity: number;
    category_id: number;
    brand_id: number;
    specifications: string | Record<string, any>;
    packaging_type: string;
    image_url: string;
    
    // Relations (Often joined in queries)
    category_name?: string;
    category_slug?: string;
    brand_entity_name?: string;
    brand_manufacturer?: string;
    brand_ce_cert_url?: string;
}

export interface User {
    id: string;
    email: string;
    full_name: string;
    clinic_name?: string;
    inpe_number?: string;
    specialty?: string;
    city: string;
    verification_status: 'pending' | 'verified' | 'rejected';
    role: 'user' | 'admin';
    created_at: string;
}

export interface OrderItem {
    id: number;
    order_id: number;
    product_id: number;
    quantity: number;
    price_per_unit_at_purchase: number;
    selected_variant?: string;
    name?: string; // Joined 
}

export interface Order {
    id: number;
    total_amount: number;
    status: 'pending' | 'processing' | 'shipped' | 'delivered' | 'cancelled';
    shipping_address_id: number;
    user_id: string;
    created_at: string;
    
    // Relations
    items?: OrderItem[];
    user_email?: string;
    user_clinic_name?: string;
}

export interface KitItem {
    default_quantity: number;
    product: Product;
}

export interface Kit {
    id: number;
    name: string;
    slug: string;
    description: string;
    image_url: string;
    items?: KitItem[];
}
