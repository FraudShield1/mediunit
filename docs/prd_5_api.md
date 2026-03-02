# PRD File 5: FastAPI Cloudflare Worker API Specifications

This API is designed specifically for Cloudflare Workers using FastAPI. It operates entirely statelessly at the Edge, connecting directly to the Cloudflare D1 distributed SQLite database via HTTP bindings.

## 1. Global API Configuration
* **Base URL**: `https://mediunit-backend.a-naouri.workers.dev/api/v1`
* **CORS**: Configured to accept requests from `<any>.mediunit-frontend.pages.dev` and `localhost:3000`.
* **State Management**: Authentication relies on secure HTTP-Only cookies or `Bearer` tokens passed via the `Authorization` header.
* **Standard Response**: All routes wrap their successful output in raw JSON (e.g., `[{"id": 1, "name": "..."}]`) or standard Pydantic schema validation wrappers.

## 2. Exhaustive Endpoint Documentation

### 2.1 Products & Categories (Public Access)
* **`GET /products/`**
  * **Description**: Returns all active products in the catalog.
  * **Response**: `List[ProductResponse]` (Includes `id`, `name`, `slug`, `sku`, `base_unit_price`, `image_url`, `packaging_type`, `specifications` JSON string).
  * **Performance**: Under 30ms TTFB via D1 edge caching.
* **`GET /products/{slug}`**
  * **Description**: Fetches a single product by its URL slug.
  * **Response**: `ProductResponse` with nested `category` and `brand` models (including CE Certification URLs).
* **`GET /categories/`**
  * **Description**: Returns the clinical pillars taxonomy.
  * **Response**: `List[CategoryResponse]` (Includes `id`, `name`, `slug`).

### 2.2 Order & Checkout Flow (Guest & Authenticated)
* **`POST /orders/`**
  * **Description**: The core Cash-on-Delivery (COD) checkout endpoint.
  * **Payload (`OrderCreate`)**:
    ```json
    {
      "items": [
        {"product_id": 16, "quantity": 100, "selected_variant": "18G"}
      ],
      "shipping_details": {
        "first_name": "Dr. Ahmed",
        "last_name": "Tazi",
        "phone": "+212600000000",
        "street_address": "Clinique Al Rahma, Bd Anfa",
        "city": "Casablanca",
        "zip_code": "20000"
      },
      "total_amount": 1250.00
    }
    ```
  * **Database Action**: Creates an `Address` record first. Then creates an `Order` record linked to the `Address`. Finally, loops through `items` to create `OrderItems` capturing the exact price at purchase.
  * **Response**: `{"id": 105, "status": "pending", "total_amount": 1250.00}`

### 2.3 Administration (Protected)
* **`GET /orders/`**
  * **Description**: Returns all orders for the Admin Dashboard.
* **`PUT /orders/{order_id}/status`**
  * **Description**: Updates order status (`pending` -> `shipped` -> `delivered`).
* **`POST /products/`**
  * **Description**: Creates a new product. Used by the internal B2B PIM (Product Information Manager).
* **`PUT /products/{product_id}`**
  * **Description**: Updates product details (price, specs, image).

## 3. Worker Limitations & Workarounds
Because this API runs in a V8 Isolate (Cloudflare Worker), standard Python libraries relying on C-extensions (like `psycopg2` or raw `sqlite3` dynamic links) are strictly prohibited. 
* All database ORM operations are bypassed in favor of raw SQL strings executed via the HTTP D1 API binding.
* Synchronous blocking operations (like heavy PDF generation) must be offloaded to standard Cloudflare Workers or optimized heavily if run natively inside the FastAPI isolate.