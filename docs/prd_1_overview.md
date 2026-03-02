# PRD 1: Project Overview & System Architecture

## 1. Executive Summary
**Project Name:** MediUnit
**Mission:** Disrupt the Moroccan B2B medical supply chain by allowing independent clinics and doctors (primarily in Casablanca) to order medical consumables by the unit with next-day delivery.
**Core Differentiator:** Zero-friction ordering, no forced inventory management software, transparent unit pricing, and seamless compliance documentation.

## 2. Exhaustive Architecture (Cloudflare Edge Serverless)

The original architecture envisioned Docker, PostgreSQL, and FastAPI. **This has been completely abandoned in favor of a 100% Serverless Edge Architecture via Cloudflare.** 

This provides zero DevOps overhead, sub-millisecond database queries via SQLite at the edge, and infinite horizontal scaling.

### 2.1 Frontend: Next.js 14 (App Router)
- **Deployment:** [Cloudflare Pages](https://pages.cloudflare.com/)
- **Configuration:** Static Site Generation (`output: 'export'`).
- **State Management:** Zustand with `persist` middleware to save Cart items and Language preferences (FR/EN) to `localStorage`.
- **Styling:** Tailwind CSS (Strict Zocdoc/One-Medical aesthetic: white space, `medical-blue`, `sage-green`).
- **Icons:** `lucide-react`.

### 2.2 Backend: Cloudflare Workers
- **Deployment:** [Cloudflare Workers](https://workers.cloudflare.com/)
- **API Engine:** Raw `fetch` event listener mapped in `/backend/worker.js`. No heavy Python/FastAPI frameworks exist.
- **Routing:** Direct Native JS Path matching (`if (path === '/api/v1/products')`).
- **PDF Generation:** Utilizes `pdf-lib` to dynamically generate *Fiches Techniques* directly on the Edge worker.

### 2.3 Database: Cloudflare D1 (Serverless SQLite)
- **Deployment:** Bound to the Cloudflare Worker via `env.DB`.
- **Structure:** Fully relational SQLite database.
- **Core Tables:** `product`, `category`, `brand`, `user`, `order`, `order_item`.
- **Migrations:** Managed via `wrangler d1 migrations apply`.

## 3. Core B2B User Journeys

### Flow 1: Discovery & SEO
1. User lands on `/` (Homepage).
2. The site is optimized with 100% PageSpeed Insights, featuring dynamic JSON-LD Schema.org data for MedicalBusinesses and Products.
3. The user uses the Zocdoc-style massive search bar. The autocomplete fetches filtering exactly on the client-side for zero latency.

### Flow 2: Product Detail & Compliance Gate
1. User navigates to `/products/[slug]`.
2. The `ProductClient` component parses the `specifications` JSON from the D1 database to render dynamic HTML tables.
3. If the product has multiple sizes (e.g., "18G", "19G"), the variant logic dynamically updates the SKU.
4. **Compliance Gate:** To download the manufacturer's "CE Certificate", the user must be authenticated (Login with INPE number). The "Fiche Technique" is generated on-the-fly via the Cloudflare Worker PDF generator and is public.

### Flow 3: Frictionless Cash-on-Delivery (COD)
1. User adds items to the Zustand persisted cart. Volume pricing proactively detects if the user is near a 10% or 20% discount bracket.
2. User proceeds to `/checkout`. No account creation is forced.
3. User enters Moroccan shipping details.
4. Backend Worker inserts the order into D1 securely. 

### Flow 4: Admin Management
1. Admin navigates to `/admin`.
2. A password gate protects the Shopify-style dashboard.
3. Admin can process Orders (Pending -> Delivered) and manage the entire Catalog (Full CRUD for D1 database, including complex JSON specifications).