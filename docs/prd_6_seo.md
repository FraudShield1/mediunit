# PRD File 6: 2026 SEO & Core Web Vitals Strategy

## 1. Next.js Rendering Strategy
* **Product Pages (`/produit/[slug]`):** Must use Server-Side Rendering (SSR) or Incremental Static Regeneration (ISR) to ensure Google bots see unit pricing and stock data immediately upon crawling.
* **Category Pages (`/categorie/[slug]`):** Must be heavily optimized for local intent (e.g., dynamically injecting "Casablanca" into the H1 and meta titles if the category supports it).

## 2. Structured Data (JSON-LD)
* **Product Schema:** Every product page must inject JSON-LD containing: Name, Image, SKU, Unit Price, Currency (MAD), and Availability (`InStock` or `OutOfStock`).
* **MedicalBusiness Schema:** The homepage must inject schema identifying the entity as a Medical Business operating in Morocco.

## 3. Core Web Vitals (INP & LCP)
* **Interaction to Next Paint (INP):** Ensure UI state changes (like clicking "Add to Cart") update the frontend state immediately (Optimistic UI) before waiting for the FastAPI backend to respond. Latency must feel < 200ms.
* **Largest Contentful Paint (LCP):** Product images must be the highest priority. Use `next/image` with `priority={true}` for the main image above the fold, strictly serving WebP or AVIF formats.

## 4. Meta Data Automations
* Generate dynamic title tags using this exact formula: `[Product Name] à l'unité - Fournisseur Médical B2B [City/Casablanca] | [Brand Name]`
