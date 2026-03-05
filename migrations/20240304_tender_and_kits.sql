-- Migration: 20240304_tender_and_kits.sql
-- Description: Unified migration to fix missing core tables and add Kits/Tenders

-- 1. Core Tables (Missing in Production)
CREATE TABLE IF NOT EXISTS user (
    id TEXT PRIMARY KEY,
    email TEXT UNIQUE,
    hashed_password TEXT,
    clinic_name TEXT,
    inpe_number TEXT,
    verification_status TEXT DEFAULT 'pending',
    role TEXT DEFAULT 'doctor',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS address (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT,
    first_name TEXT,
    last_name TEXT,
    phone TEXT,
    street_address TEXT,
    city TEXT DEFAULT 'Casablanca',
    zip_code TEXT,
    is_primary BOOLEAN DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS "order" (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT,
    total_amount DECIMAL(10, 2),
    status TEXT DEFAULT 'pending',
    shipping_address_id INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (shipping_address_id) REFERENCES address(id)
);

CREATE TABLE IF NOT EXISTS order_item (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    price_per_unit_at_purchase DECIMAL(10, 2),
    selected_variant TEXT,
    FOREIGN KEY (order_id) REFERENCES "order"(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- 3. Kits System
CREATE TABLE IF NOT EXISTS kit (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    slug TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS kit_item (
    kit_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    default_quantity INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY (kit_id, product_id),
    FOREIGN KEY (kit_id) REFERENCES kit(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
