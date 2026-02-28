# PRD File 4: PostgreSQL Database Schema Strategy

## 1. Users & Auth
* `users`: id (UUID, PK), email (UK), phone_number (UK), hashed_password, clinic_name, inpe_number, verification_status (enum: unverified, pending, verified), role (enum: admin, doctor), created_at.
* `addresses`: id (PK), user_id (FK), street_address, city (default: Casablanca), zip_code, is_primary (boolean).

## 2. Product Catalog
* `categories`: id (PK), name, slug (UK), parent_id (FK to self, nullable).
* `products`: id (PK), sku (UK), name, slug (UK), description, category_id (FK), base_unit_price (decimal), stock_quantity (integer), ce_cert_url, tech_sheet_url, image_url.
* `volume_discounts`: id (PK), product_id (FK), min_quantity (integer), discount_percentage (decimal).

## 3. Bundles / Kits
* `kits`: id (PK), name, description, slug.
* `kit_items`: kit_id (FK), product_id (FK), default_quantity (integer). Composite PK (kit_id, product_id).

## 4. Orders & Transactions
* `orders`: id (UUID, PK), user_id (FK), total_amount (decimal), status (enum: pending, processing, shipped, delivered, cancelled), shipping_address_id (FK), created_at.
* `order_items`: id (PK), order_id (FK), product_id (FK), quantity (integer), price_per_unit_at_purchase (decimal).