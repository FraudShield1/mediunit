# PRD File 5: FastAPI Endpoint Specifications

## 1. Global API Rules
* All routes must be prefixed with `/api/v1/`.
* Authentication is handled via JWT (JSON Web Tokens) passed in the `Authorization: Bearer <token>` header.
* Responses must be standard JSON: `{"data": {...}, "error": null}`.

## 2. Core Endpoints
### Auth
* `POST /auth/register`: Accepts email, phone, password. Returns JWT.
* `POST /auth/login`: Accepts email/phone and password. Returns JWT.
* `POST /auth/verify`: Accepts INPE/License upload. Updates user verification_status.

### Catalog
* `GET /products`: Returns paginated products. Accepts query params: `?category_slug=...`, `?sort=price_asc`, `?search=...`. **Must be cached in Redis.**
* `GET /products/{slug}`: Returns single product details including compliance doc links.
* `GET /categories`: Returns category tree.

### Cart & Checkout
* `POST /orders/checkout`: Accepts array of `{"product_id": int, "quantity": int}`. Backend validates stock, applies dynamic volume discounts, creates order, and returns Order ID.

### User Dashboard
* `GET /users/me/orders`: Returns order history.
* `POST /users/me/orders/{order_id}/reorder`: Fetches items from past order, validates current stock, and returns a ready-to-checkout cart payload.
* `GET /users/me/compliance`: Aggregates all CE certs and tech sheets from products purchased in the last 12 months.