# MediUnit B2B Medical Supplies Platform (Casablanca)

![MediUnit Production](https://mediunit-frontend.pages.dev/apple-touch-icon.png)

**MediUnit** is a high-performance, B2B medical supply procurement platform built for clinics, doctors, and hospitals in Morocco. It offers unit-based purchasing for clinical consumables, tiered volume pricing, strict adherence to Moroccan medical compliance (INPE, CE Certificates), and next-day delivery in Casablanca.

The platform is designed with a "Zocdoc/One-Medical" aesthetic—clean, glassmorphic, clinical, and minimalist interfaces built for high trust and effortless ordering.

---

## 🌐 Live Production Environments
- **Frontend (Storefront & Admin)**: [https://mediunit-frontend.pages.dev](https://mediunit-frontend.pages.dev)
- **Backend (API Edge Workers)**: `https://mediunit-backend.a-naouri.workers.dev/api/v1`

---

## 🏗️ Architecture & Tech Stack

This repository is built precisely for **Cloudflare Serverless Edge** deployment. It features a completely decoupled architecture for ultra-high performance (100% PageSpeed Insights compliant).

### 1. Frontend: Next.js 14 (App Router)
- **Framework:** Next.js configured for `output: 'export'` (Static Site Generation).
- **Styling:** TailwindCSS with strict clinical branding (`medical-blue`, `slate-gray`, `sage-green`).
- **State Management:** Zustand (for Cart persistence and Language toggles FR/EN).
- **Icons & UI:** Lucide-React, React-Hot-Toast.
- **Hosting:** Cloudflare Pages.

### 2. Backend: Cloudflare Workers
- **Framework:** Cloudflare Workers natively handling exact `Request` & `Response` mapping.
- **Routing:** Hand-crafted, lightweight JavaScript router located in `/backend/worker.js`.
- **Database:** **Cloudflare D1 (SQLite at the Edge)** for sub-millisecond query execution.
- **Compliance Engine:** Integrated `pdf-lib` for dynamic real-time generation of *Fiches Techniques*.

---

## 📚 Project Documentation (PRDs)

For thorough architectural deep-dives, please consult the exhaustive documentation in the `/docs` directory. This is mandatory reading for external developers joining the project.

1. **[PRD 1: System Overview & Architecture](./docs/prd_1_overview.md)**
   Understand the Data-flow, user journeys, and full Cloudflare stack.
2. **[PRD 2: UI/UX & Design System](./docs/prd_2_ui_ux.md)**
   The Zocdoc/One-Medical aesthetic guide, exact tailwind hex codes, and font choices (Inter & Outfit).
3. **[PRD 4: Database Schema (D1 SQLite)](./docs/prd_4_db.md)**
   Entity relationships, strict constraints, and the JSON-encoded `specifications` mechanism.
4. **[PRD 7: DevOps & Deployment Strategy](./docs/prd_7_devops.md)**
   How to deploy using Wrangler CLI, environment variables, and bypass stuck GitHub integrations.
5. **[PRD 8: Full Platform Audit & Future Improvements](./docs/prd_8_audit_improvements.md)**
   Strategic documentation on what's missing (integrations, B2B roles), what could be improved (caching, testing), and why.


*(Note: PRD 3, 5, and 6 were consolidated during development into the core architecture documents).*

---

## 🚀 Quick Start (Local Development)

### Prerequisites
- Node.js 18+
- [Cloudflare Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/install-and-update/) (`npm i -g wrangler`)
- Git

### 1. Clone the repository
```bash
git clone https://github.com/FraudShield1/mediunit.git
cd mediunit
```

### 2. Run the Frontend Locally
The frontend is a static export Next.js application.
```bash
cd frontend
npm install
npm run dev
```
*Frontend will be available at `http://localhost:3000`.*

### 3. Run the Backend & Database Locally
Cloudflare provides an excellent local emulator for Workers and D1.
```bash
cd backend
npm install
# Run the worker with a local D1 SQLite database
npx wrangler dev
```

### 4. Deploying to Production
If GitHub automated deployments fail or get stuck caching old `.next/` builds, force a pure Edge deployment using Wrangler:

**Frontend (Pages):**
```bash
cd frontend
npm run build
npx wrangler pages deploy out --project-name=mediunit-frontend --branch=production
```

**Backend (Workers):**
```bash
cd backend
npx wrangler deploy
```

---

## 🔐 Security & Compliance
- **Authentication:** HttpOnly cookies for Auth Tokens to prevent XSS.
- **Route Protection:** Next.js standard middleware logic safeguarding `/admin` and `/dashboard`.
- **Certifications:** Strict gating function requiring authenticated user status (INPE validation logic) before releasing manufacturer **CE Certificates**.

---
## 📧 Contact
For business inquiries or technical support, contact **Abdel** at: [abdel@mediunit.ma](mailto:abdel@mediunit.ma)

---
*Built with precision for the Moroccan Medical B2B sector.*
