# PRD 2: UI/UX & Mobile-First Design System

## 1. Minimalist Clinical Aesthetic & Brand Identity
The frontend is strictly built around a "Modern HealthTech" aesthetic (heavily inspired by Zocdoc, One-Medical, and modern Apple HIG). Everything must feel sterile, high-trust, and effortless for a doctor ordering supplies in between consultations.

*   **Vibe:** Business-grade, minimalist, clinical, hyper-efficient.
*   **Color Palette (Tailwind Configuration):**
    *   **Backgrounds:** Pure White (`bg-white` or `bg-clinic-white`) for sterile spaces.
    *   **Surface/Cards:** Soft Off-White/Light Gray (`bg-slate-gray-light/5`) to create depth without borders.
    *   **Primary Text:** Charcoal / Slate Gray Dark (`text-slate-gray-dark`) for optimal contrast without the harshness of `#000`.
    *   **Primary Action/Brand:** Deep Medical Blue (`bg-medical-blue`, `#0056D2`). Used exclusively for primary buttons and active states.
    *   **Logistics & Success:** Sage Green (`text-sage-green-dark`, `border-sage-green/20`). Used for "In Stock", "Delivery", and success toasts.
*   **Typography:** The font stack uses `next/font/google`.
    *   **Headlines & Prices:** `Outfit` (variable font). Highly structured, geometric, bold.
    *   **Paragraphs & Specs:** `Inter` (variable font). Perfect legibility at small sizes.

## 2. Core UI Components

### 2.1 The "Glassmorphic" Header
*   Stays pinned (`sticky top-0`).
*   Implements `backdrop-blur-md` with `bg-white/80` for a premium frosted glass effect.
*   Contains the Language Switcher (FR/EN) built on a `useLanguageStore` (Zustand) and a Cart indicator (`useCartStore`).

### 2.2 The Product Grid & Cards
*   Cards use aggressive border-radius (`rounded-3xl` or `rounded-[2rem]`) to feel modern and friendly.
*   Images load via `next/image` with `object-contain` and subtle `group-hover:scale-105` animations.
*   Shadows are minimal, relying on `ring-1 ring-slate-gray-light/10` or soft blue drop-shadows `shadow-medical-blue/5`.

### 2.3 The "Volume Pricing" Upsell Indicator
*   When a user adds items, a dynamic sticky bar or inline tooltip calculates the offset to the next discount tier.
*   Example: "💡 Ajoutez 8 pour 10% de remise au volume!".
*   Changes color to `bg-sage-green/10 text-sage-green-dark` when a discount is achieved.

### 2.4 Product Specifications Table
*   Data stored as JSON in D1 is dynamically parsed into a visually separated key-value list structure.
*   Excludes redundant keys (like "marque") from the JSON iteration if already displayed in the main header.

## 3. SEO & DOM Best Practices
*   Heading Hierarchy: Every page must have exactly one `<h1>`.
*   Font Loading: CSS `display: swap` must be utilized via Next.js to prevent FOIT (Flash of Invisible Text).
*   Images: The main Large Contentful Paint (LCP) element must have `priority={true}` in `next/image`.