# PRD File 2: UI/UX & Mobile-First Design System

## 1. Aesthetic & Brand Identity
* **Vibe:** Business-grade, minimalist, clinical, hyper-efficient (inspired by AliHealth).
* **Color Palette:**
    * Background: Pure White (`#FFFFFF`)
    * Surface/Cards: Off-White/Light Gray (`#F8F9FA`)
    * Primary Text: Slate Gray/Charcoal (`#1F2937`)
    * Primary Action/Accent: Deep Medical Blue (`#0056D2`)
    * Success (Stock/Cart): Emerald Green (`#10B981`)
    * Warning (Low Stock): Rose Red (`#E11D48`)
* **Typography:** Inter or Roboto. Clean sans-serif. Use heavy font weights (700+) for prices and product titles, and lighter weights (400) for descriptions.

## 2. Mobile Layout Specifications
* **Top App Bar:** Must contain the Brand Logo (left) and a prominent Search Bar taking up 70% of the header width. Search bar stays pinned (sticky) on scroll.
* **Bottom Navigation Bar (Sticky):** Four equal-width icons with text labels: Home, Search, Quick Reorder, Profile.
* **Touch Targets:** Every interactive element (buttons, toggles, links) must have a minimum hit area of 48x48 pixels.

## 3. Component Specifications
* **Product Card (List View):** * Left: 80x80px WebP Image.
    * Right (Top to Bottom): Product Title (truncated to 2 lines), Unit Price (Bold), Dynamic Volume Discount hint (small text), Stock Status dot.
    * Action: A 48x48px "+" button anchored to the bottom right of the card.
* **Cart Drawer:** Slides in from the right. Must dynamically calculate totals, taxes, and clearly display "Next-Day Delivery to Casablanca" if conditions are met.