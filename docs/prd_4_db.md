# PRD 4: Cloudflare D1 (SQLite) Database Schema Strategy

Our production database uses [Cloudflare D1](https://developers.cloudflare.com/d1/), a distributed globally replicated SQLite database at the edge. The schema is optimized for ultra-fast reads (Next.js App Router fetching) and robust transactional writes (Order processing via Cloudflare Workers).

## 1. Core Catalog Schema

### 1.1 Category Table
Manages the taxonomy of the "Clinical Pillars".
* `id` (INTEGER, PK, AUTOINCREMENT)
* `name` (VARCHAR, NOT NULL) - Display name (e.g., "Anesthésie")
* `slug` (VARCHAR, UNIQUE, NOT NULL) - URL-friendly routing identifier
* `description` (TEXT) - Optional clinical SEO description
* `parent_id` (INTEGER, FK) - Self-referential for sub-categories
* `status` (VARCHAR, DEFAULT 'active')

### 1.2 Brand Table
Centralizes regulatory data for medical manufacturers.
* `id` (INTEGER, PK, AUTOINCREMENT)
* `name` (VARCHAR, UNIQUE, NOT NULL)
* `manufacturer` (VARCHAR) - Legal entity name
* `ce_certificate_url` (VARCHAR) - Link to public compliance doc
* `notes` (TEXT) - MDR transition status or ISO data

### 1.3 Product Table
The central B2B product record, heavily utilizing JSON for flexible variants.
* `id` (INTEGER, PK, AUTOINCREMENT)
* `sku` (VARCHAR, UNIQUE, NOT NULL) - Primary stock keeping unit
* `name` (VARCHAR, NOT NULL)
* `slug` (VARCHAR, UNIQUE, NOT NULL)
* `description` (TEXT) - HTML enriched clinical description
* `category_id` (INTEGER, FK -> category.id)
* `brand_id` (INTEGER, FK -> brand.id, NULLABLE)
* `base_unit_price` (DECIMAL, NOT NULL) - Forced unit pricing (MAD)
* `packaging_type` (VARCHAR) - e.g., 'Boîte de 100', 'Unité'
* `image_url` (VARCHAR)
* `specifications` (TEXT/JSON) - Stores dynamic specifications. Example: `{"Taille": ["18G", "20G"], "Matériau": "Silicone"}`
* `tech_sheet_url` (VARCHAR) - Replaced with dynamic `/spec-pdf` endpoint on backend.
* `created_at`, `updated_at` (TIMESTAMP)

## 2. Order & User Schema

### 2.1 User Table
B2B clinic registration data.
* `id` (VARCHAR/UUID, PK)
* `email` (VARCHAR, UNIQUE)
* `hashed_password` (VARCHAR)
* `clinic_name` (VARCHAR)
* `inpe_number` (VARCHAR) - National Practitioner ID (INPE) - Required for CE unlock.
* `verification_status` (VARCHAR) - pending/verified
* `role` (VARCHAR) - 'admin' or 'doctor'
* `created_at` (TIMESTAMP)

### 2.2 Address Table
Dynamically generated during Checkout (Cash-on-Delivery).
* `id` (INTEGER, PK, AUTOINCREMENT)
* `user_id` (VARCHAR, FK -> users.id, NULLABLE for Guest Checkout)
* `first_name`, `last_name` (VARCHAR)
* `phone` (VARCHAR)
* `street_address` (VARCHAR)
* `city` (VARCHAR, DEFAULT 'Casablanca')
* `zip_code` (VARCHAR)
* `is_primary` (BOOLEAN)

### 2.3 Order Table
The transactional source of truth.
* `id` (INTEGER, PK, AUTOINCREMENT)
* `user_id` (VARCHAR, FK, NULLABLE)
* `total_amount` (DECIMAL)
* `status` (VARCHAR) - Enum: `pending`, `processing`, `shipped`, `delivered`, `cancelled`
* `shipping_address_id` (INTEGER, FK -> address.id)
* `created_at` (TIMESTAMP)

### 2.4 Order Item Table
Snapshot of product details at the time of purchase.
* `id` (INTEGER, PK, AUTOINCREMENT)
* `order_id` (INTEGER, FK -> orders.id)
* `product_id` (INTEGER, FK -> product.id)
* `quantity` (INTEGER)
* `price_per_unit_at_purchase` (DECIMAL) - Prevents historical invoice divergence.
* `selected_variant` (VARCHAR) - Evaluated dynamically if product spec requires multiple sizes.

## 3. Operations & Migrations
All modifications must be defined in pure `.sql` scripts inside `backend/migrations/` and executed using the Wrangler CLI against local and production.

```bash
# Execute locally:
wrangler d1 migrations apply mediunit-db --local

# Execute in production:
wrangler d1 migrations apply mediunit-db --remote
```