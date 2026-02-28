# PRD File 1: Project Overview & System Architecture

## 1. Executive Summary
**Project Name:** MediUnit
**Parent Company:** MediUnit
**Mission:** Disrupt the Moroccan B2B medical supply chain by allowing independent clinics and doctors (primarily in Casablanca) to order medical consumables by the unit with next-day delivery.
**Core Differentiator:** Zero-friction ordering, no forced inventory management software, transparent unit pricing, and seamless compliance documentation.

## 2. Technical Stack
* **Frontend Interface:** Next.js (App Router), React, Tailwind CSS. Must be built as a Progressive Web App (PWA) for mobile-first usage.
* **Backend API:** Python using FastAPI. Must be purely headless and RESTful to support future integration with a WhatsApp/Telegram bot architecture.
* **Database (Relational):** PostgreSQL (managed via SQLAlchemy or SQLModel).
* **Database (In-Memory/Cache):** Redis (for caching the product catalog, session states, and rate limiting).
* **Containerization:** Docker & Docker Compose for self-hosted deployment.

## 3. System Architecture Guidelines
* **API-First Approach:** The Next.js frontend is strictly a client. All business logic, cart validation, and compliance document generation must happen in the FastAPI backend.
* **Asynchronous Processing:** FastAPI must utilize `async/await` for all database calls and external requests to ensure maximum concurrency.
* **Offline Tolerance:** The PWA must use Service Workers to cache basic static assets so the app UI loads instantly even on weak clinic Wi-Fi.