# PRD 7: DevOps & Configuration (Cloudflare Ecosystem)

This project has migrated entirely off Docker/PostgreSQL to a 100% serverless edge architecture using the **Cloudflare Stack**.

## 1. Cloudflare Pages (Frontend)
The Next.js 14 application is compiled as a static export (`next build` with `output: "export"`) and pushed to the Cloudflare Global Network.

*   **Production URL:** `https://mediunit-frontend.pages.dev`
*   **Build Command:** `npm run build`
*   **Wrangler Deployment (Manual Bypass):**
    If the GitHub integration hangs or serves stale cache due to routing issues, you can forcefully deploy your local `./out` folder via Wrangler.
    ```bash
    npx wrangler pages deploy out --project-name=mediunit-frontend --branch=production
    ```
*   **Environment Variables:** Configured natively in the Cloudflare Pages Dashboard under Settings > Environment Variables. `NEXT_PUBLIC_API_URL` must point to the backend worker.

## 2. Cloudflare Workers (Backend)
The entire backend operates on a single `worker.js` file leveraging the V8 Engine at the Edge.

*   **Production URL:** `https://mediunit-backend.a-naouri.workers.dev`
*   **Configuration:** `wrangler.toml` controls the binding of the D1 Database and R2 Buckets (if applicable).
*   **Wrangler Deployment:**
    ```bash
    npx wrangler deploy
    ```

## 3. Database Updates (D1)
Cloudflare D1 is a serverless SQLite database. You should never edit production data directly without testing locally or using migrations.

1.  **Generate a Migration:**
    ```bash
    npx wrangler d1 migrations create mediunit-db "add_new_table"
    ```
2.  **Edit the `.sql` file** in `./migrations`.
3.  **Apply Locally:**
    ```bash
    npx wrangler d1 migrations apply mediunit-db --local
    ```
4.  **Apply to Production:**
    ```bash
    npx wrangler d1 migrations apply mediunit-db --remote
    ```

## 4. Environment Variables (`wrangler.toml` / `.env`)
The operations logic relies on strict environment variable separation for local vs. production.
*   **Frontend:** Needs `NEXT_PUBLIC_API_URL`.
*   **Worker:** Native D1 binding via `[[d1_databases]]` in `wrangler.toml`. JWT Secrets and operations logic (e.g., `OPERATIONS_CITY="Casablanca"`) are set via `wrangler secret put` or the Cloudflare Dashboard.