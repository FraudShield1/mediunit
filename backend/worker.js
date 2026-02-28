export default {
    async fetch(request, env) {
        const url = new URL(request.url);
        const path = url.pathname;

        // Setup CORS headers
        const corsHeaders = {
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Methods": "GET,HEAD,POST,OPTIONS",
            "Access-Control-Allow-Headers": "Content-Type",
            "Access-Control-Max-Age": "86400",
            "Content-Type": "application/json"
        };

        if (request.method === "OPTIONS") {
            return new Response(null, { headers: corsHeaders });
        }

        try {
            if (path === "/api/v1/categories") {
                const { results } = await env.DB.prepare("SELECT * FROM category").all();
                return new Response(JSON.stringify(results), { headers: corsHeaders });
            }

            if (path === "/api/v1/products") {
                const categorySlug = url.searchParams.get("category_slug");
                const search = url.searchParams.get("search");

                let query = "SELECT p.*, c.name as category_name FROM product p LEFT JOIN category c ON p.category_id = c.id WHERE 1=1";
                const params = [];

                if (categorySlug) {
                    query += " AND c.slug = ?";
                    params.push(categorySlug);
                }
                if (search) {
                    query += " AND p.name LIKE ?";
                    params.push(`%${search}%`);
                }

                query += " LIMIT 1000";

                const { results } = await env.DB.prepare(query).bind(...params).all();
                return new Response(JSON.stringify(results), { headers: corsHeaders });
            }

            if (path.startsWith("/api/v1/products/") && path !== "/api/v1/products/") {
                const slug = path.replace("/api/v1/products/", "");
                const result = await env.DB.prepare("SELECT p.*, c.name as category_name FROM product p LEFT JOIN category c ON p.category_id = c.id WHERE p.slug = ?").bind(slug).first();

                if (!result) return new Response(JSON.stringify({ error: "Not found" }), { status: 404, headers: corsHeaders });

                result.discounts = [];
                result.category = { name: result.category_name, slug: String(result.category_name).toLowerCase() };

                return new Response(JSON.stringify(result), { headers: corsHeaders });
            }

            return new Response(JSON.stringify({ status: "ok", message: "MediUnit API" }), { headers: corsHeaders });
        } catch (err) {
            return new Response(JSON.stringify({ error: err.toString() }), { status: 500, headers: corsHeaders });
        }
    }
}
