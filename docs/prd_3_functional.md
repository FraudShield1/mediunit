# PRD File 3: Core Functional Requirements & User Flow

## 1. Authentication & Onboarding
* **Frictionless Browsing:** Users do not need an account to view products, prices, or add items to their local cart.
* **Account Creation:** Triggered only at checkout or when saving a "Quick Reorder" profile. Requires: Phone Number, Email, Password.
* **Deferred Verification:** To finalize their first shipment, the user must upload their INPE (National Identifier) or Medical License. The backend sets their status to `pending_verification`. Admin approves manually.

## 2. Granular Cart & Ordering Logic
* **Unit-Based Increments:** Users can add 1, 2, or 15 individual units.
* **Dynamic Pricing Engine:** As users click "+", a tooltip must show real-time price breaks (e.g., "Add 5 more for a 10% volume discount").
* **Pre-built Clinical Kits:** Users can browse a "Kits" section (e.g., "Standard Suture Kit"). Clicking "Add Kit to Cart" queries the backend and loops through the kit's components, adding the correct quantity of each individual SKU to the cart.

## 3. The "Zero-Hassle" Features
* **One-Click Reorder:** The user dashboard features a primary button: "Reorder Last Invoice." This fetches the last `delivered` order and duplicates the SKUs and quantities into the current cart.
* **Compliance Vault:** A dedicated tab in the user profile. Lists all past orders with instant download links for:
    * Tax Invoices (PDF)
    * CE/ISO Certificates for purchased SKUs (PDF/ZIP)
    * Technical Data Sheets (PDF)