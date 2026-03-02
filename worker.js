import { PDFDocument, rgb, StandardFonts } from 'pdf-lib';

export default {
    async fetch(request, env) {
        const corsHeaders = {
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Methods": "GET, POST, PATCH, DELETE, OPTIONS",
            "Access-Control-Allow-Headers": "Content-Type",
        };

        if (request.method === "OPTIONS") {
            return new Response(null, { headers: corsHeaders });
        }

        try {
            const url = new URL(request.url);
            const path = url.pathname;

            if (path === "/api/v1/categories") {
                const { results } = await env.DB.prepare("SELECT * FROM category").all();
                return new Response(JSON.stringify(results), {
                    headers: { "Content-Type": "application/json", ...corsHeaders }
                });
            }

            if (path === "/api/v1/brands") {
                const { results } = await env.DB.prepare("SELECT * FROM brand").all();
                return new Response(JSON.stringify(results), {
                    headers: { "Content-Type": "application/json", ...corsHeaders }
                });
            }

            if (path === "/api/v1/products") {
                const categorySlug = url.searchParams.get("category_slug");
                const search = url.searchParams.get("search");

                let sql = "SELECT p.*, c.name as category_name, c.slug as category_slug, b.name as brand_name FROM product p " +
                    "LEFT JOIN category c ON p.category_id = c.id " +
                    "LEFT JOIN brand b ON p.brand_id = b.id WHERE 1=1";
                const args = [];

                if (categorySlug) {
                    sql += " AND c.slug = ?";
                    args.push(categorySlug);
                }
                if (search) {
                    sql += " AND (p.name LIKE ? OR p.sku LIKE ?)";
                    args.push(`%${search}%`, `%${search}%`);
                }
                sql += " ORDER BY p.popularity DESC LIMIT 100";

                const { results } = await env.DB.prepare(sql).bind(...args).all();
                const formatted = results.map(r => ({
                    ...r,
                    category: { name: r.category_name || "N/A", slug: r.category_slug || "" }
                }));

                return new Response(JSON.stringify(formatted), {
                    headers: { "Content-Type": "application/json", ...corsHeaders }
                });
            }

            if (path.startsWith("/api/v1/products/")) {
                const parts = path.split("/");
                const slug = parts[4]; // /api/v1/products/[slug]

                if (parts[5] === "spec-pdf") {
                    const product = await env.DB.prepare(`
                        SELECT p.*, c.name as category_name, b.name as brand_name, b.manufacturer 
                        FROM product p 
                        LEFT JOIN category c ON p.category_id = c.id 
                        LEFT JOIN brand b ON p.brand_id = b.id 
                        WHERE p.slug = ?
                    `).bind(slug).first();

                    if (!product) return new Response("Not Found", { status: 404, headers: corsHeaders });

                    try {
                        const pdfDoc = await PDFDocument.create();
                        const page = pdfDoc.addPage([595.28, 841.89]); // A4 size
                        const { width, height } = page.getSize();

                        const fontBold = await pdfDoc.embedFont(StandardFonts.HelveticaBold);
                        const fontRegular = await pdfDoc.embedFont(StandardFonts.Helvetica);

                        const primaryColor = rgb(0.12, 0.35, 0.6); // Medical Blue #1e5999
                        const grayColor = rgb(0.4, 0.4, 0.4);

                        // Header background
                        page.drawRectangle({ x: 0, y: height - 80, width, height: 80, color: primaryColor });

                        // Header Text
                        page.drawText('MediUnit - Fiche Technique', { x: 40, y: height - 45, size: 24, font: fontBold, color: rgb(1, 1, 1) });
                        page.drawText('Documentation Clinique B2B', { x: 40, y: height - 65, size: 10, font: fontRegular, color: rgb(0.9, 0.9, 0.9) });

                        let yPos = height - 120;

                        // Product Title
                        page.drawText(product.name || 'Produit', { x: 40, y: yPos, size: 18, font: fontBold, color: primaryColor });
                        yPos -= 30;

                        // Meta details
                        const brandName = product.brand_name || product.brand || 'MediUnit Professional';
                        const details = [
                            `Reference (SKU): ${product.sku || 'N/A'}`,
                            `Categorie: ${product.category_name || 'Generique'}`,
                            `Marque: ${brandName}`,
                            `Fabricant: ${product.manufacturer || 'N/A'}`,
                            `Conditionnement: ${product.packaging_type || 'N/A'}`,
                        ];

                        for (const text of details) {
                            page.drawText(text, { x: 40, y: yPos, size: 11, font: fontRegular, color: grayColor });
                            yPos -= 20;
                        }

                        yPos -= 20;

                        // Specifications section
                        page.drawText('Specifications Techniques', { x: 40, y: yPos, size: 14, font: fontBold, color: primaryColor });
                        page.drawLine({ start: { x: 40, y: yPos - 5 }, end: { x: width - 40, y: yPos - 5 }, thickness: 1, color: primaryColor });
                        yPos -= 25;

                        let specParsed = {};
                        try {
                            if (product.specifications) {
                                specParsed = typeof product.specifications === 'string' ? JSON.parse(product.specifications) : product.specifications;
                            }
                        } catch (e) { }

                        for (const [key, value] of Object.entries(specParsed)) {
                            if (['marque', 'fabricant', 'sku', 'brand', 'manufacturer'].includes(key.toLowerCase())) continue;
                            const label = key.charAt(0).toUpperCase() + key.slice(1).replace(/_/g, ' ') + ': ';
                            const valStr = Array.isArray(value) ? value.join(', ') : String(value);

                            page.drawText(label, { x: 40, y: yPos, size: 10, font: fontBold, color: grayColor });
                            // Clean up special characters for Helvetica standard font
                            const safeValStr = valStr.replace(/[^A-Za-z0-9 .,/()\-:;'"]/g, '');
                            page.drawText(safeValStr.substring(0, 80), { x: 200, y: yPos, size: 10, font: fontRegular, color: rgb(0.2, 0.2, 0.2) });
                            yPos -= 18;
                        }

                        yPos -= 20;

                        // Description section
                        page.drawText('Description Clinique', { x: 40, y: yPos, size: 14, font: fontBold, color: primaryColor });
                        page.drawLine({ start: { x: 40, y: yPos - 5 }, end: { x: width - 40, y: yPos - 5 }, thickness: 1, color: primaryColor });
                        yPos -= 25;

                        let cleanDesc = (product.description || '').replace(/<[^>]*>?/gm, ''); // Basic HTML strip
                        // Replace any newlines/tabs with space
                        cleanDesc = cleanDesc.replace(/[\n\r\t]/g, ' ');
                        // Remove non-ASCII characters that break Helvetica
                        cleanDesc = cleanDesc.replace(/[^A-Za-z0-9 .,/()\-:;'"]/g, '');
                        cleanDesc = cleanDesc.substring(0, 800);

                        const words = cleanDesc.split(' ');
                        let line = '';
                        for (let n = 0; n < words.length; n++) {
                            const testLine = line + words[n] + ' ';
                            const testWidth = fontRegular.widthOfTextAtSize(testLine, 10);
                            if (testWidth > width - 100 && n > 0) {
                                page.drawText(line, { x: 40, y: yPos, size: 10, font: fontRegular, color: rgb(0.3, 0.3, 0.3) });
                                line = words[n] + ' ';
                                yPos -= 14;
                            } else {
                                line = testLine;
                            }
                        }
                        page.drawText(line, { x: 40, y: yPos, size: 10, font: fontRegular, color: rgb(0.3, 0.3, 0.3) });

                        // Footer
                        page.drawText('Conformite B2B - Document genere automatiquement par MediUnit 2026', { x: 40, y: 30, size: 8, font: fontRegular, color: grayColor });
                        page.drawText('Siege social: Lisbonne | Operations: Casablanca', { x: 40, y: 18, size: 8, font: fontRegular, color: grayColor });

                        page.drawText('Qualite Professionnelle', { x: width - 150, y: 30, size: 8, font: fontBold, color: primaryColor });

                        const pdfBytes = await pdfDoc.save();

                        return new Response(pdfBytes, {
                            headers: {
                                "Content-Type": "application/pdf",
                                "Content-Disposition": `inline; filename="Fiche_Technique_${slug}.pdf"`,
                                ...corsHeaders
                            }
                        });
                    } catch (pdfErr) {
                        console.error("PDF Error: ", pdfErr);
                        return new Response("Error generating PDF", { status: 500, headers: corsHeaders });
                    }
                }

                const product = await env.DB.prepare(`
          SELECT p.*, c.name as category_name, c.slug as category_slug, 
                 b.name as brand_entity_name, b.manufacturer as brand_manufacturer
          FROM product p 
          LEFT JOIN category c ON p.category_id = c.id 
          LEFT JOIN brand b ON p.brand_id = b.id 
          WHERE p.slug = ?
        `).bind(slug).first();

                if (!product) {
                    return new Response(JSON.stringify({ error: "Product not found" }), {
                        status: 404,
                        headers: { "Content-Type": "application/json", ...corsHeaders }
                    });
                }

                const formatted = {
                    ...product,
                    category: { name: product.category_name, slug: product.category_slug },
                    brand_entity: {
                        name: product.brand_entity_name || product.brand || "MediUnit",
                        manufacturer: product.brand_manufacturer
                    }
                };

                return new Response(JSON.stringify(formatted), {
                    headers: { "Content-Type": "application/json", ...corsHeaders }
                });
            }

            // --- ADMIN ROUTES ---
            const isAdminPath = path.startsWith("/api/v1/admin/") || path.startsWith("/api/v1/orders/admin") || path.startsWith("/api/v1/users");

            if (path === "/api/v1/orders/admin/all" && request.method === "GET") {
                const { results } = await env.DB.prepare("SELECT * FROM \"order\" ORDER BY created_at DESC").all();
                return new Response(JSON.stringify(results), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path === "/api/v1/users/" && request.method === "GET") {
                const { results } = await env.DB.prepare("SELECT * FROM user ORDER BY created_at DESC").all();
                return new Response(JSON.stringify(results), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path.match(/^\/api\/v1\/orders\/([^/]+)\/status$/) && request.method === "PATCH") {
                const orderId = path.split("/")[4];
                const newStatus = url.searchParams.get("status") || "pending";
                await env.DB.prepare("UPDATE \"order\" SET status = ? WHERE id = ?").bind(newStatus, orderId).run();
                return new Response(JSON.stringify({ success: true }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path.match(/^\/api\/v1\/users\/([^/]+)\/verify$/) && request.method === "PATCH") {
                const userId = path.split("/")[4];
                await env.DB.prepare("UPDATE user SET verification_status = 'verified' WHERE id = ?").bind(userId).run();
                return new Response(JSON.stringify({ success: true }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            // --- PRODUCT CRUD ---
            if (path === "/api/v1/products" && request.method === "POST") {
                const body = await request.json();
                const id = body.id || Math.floor(Math.random() * 1000000);
                const slug = body.name.toLowerCase().replace(/[^a-z0-9]+/g, '-');
                await env.DB.prepare(`
                    INSERT INTO product (id, name, slug, sku, description, base_unit_price, popularity, stock, category_id, brand_id, specifications, packaging_type, image_url)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                `).bind(
                    id, body.name, slug, body.sku || '', body.description || '', body.base_unit_price || 0,
                    body.popularity || 0, body.stock || 100, body.category_id || 1, body.brand_id || 1,
                    body.specifications || '{}', body.packaging_type || 'Unité', body.image_url || ''
                ).run();
                return new Response(JSON.stringify({ success: true, id }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path.match(/^\/api\/v1\/products\/([^/]+)$/) && request.method === "PUT") {
                const productId = path.split("/")[4];
                const body = await request.json();
                await env.DB.prepare(`
                    UPDATE product 
                    SET name = ?, sku = ?, base_unit_price = ?, stock = ?, category_id = ?, brand_id = ?, description = ?, specifications = ?, packaging_type = ?, image_url = ?
                    WHERE id = ?
                `).bind(
                    body.name, body.sku, body.base_unit_price, body.stock,
                    body.category_id || 1, body.brand_id || 1, body.description || '',
                    body.specifications || '{}', body.packaging_type || 'Unité', body.image_url || '',
                    productId
                ).run();
                return new Response(JSON.stringify({ success: true }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }


            if (path === "/api/v1/auth/login" && request.method === "POST") {
                const body = await request.json();
                const user = await env.DB.prepare("SELECT * FROM user WHERE email = ? AND hashed_password = ?").bind(body.username, body.password).first();
                if (!user) return new Response(JSON.stringify({ error: "Invalid credentials" }), { status: 401, headers: corsHeaders });
                return new Response(JSON.stringify({ token: "stub-token-" + user.id, user }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path === "/api/v1/auth/register" && request.method === "POST") {
                const body = await request.json();
                const id = crypto.randomUUID();
                await env.DB.prepare("INSERT INTO user (id, email, hashed_password, clinic_name, inpe_number, created_at) VALUES (?, ?, ?, ?, ?, datetime('now'))")
                    .bind(id, body.email, body.password, body.clinic_name, body.inpe_number).run();
                return new Response(JSON.stringify({ success: true, id }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path === "/api/v1/orders/" && request.method === "POST") {
                const body = await request.json();
                const orderId = body.id || Math.floor(Math.random() * 1000000).toString();

                // Calculate total and apply volume discounts
                let subtotal = 0;
                let itemCount = 0;
                for (const item of body.items) {
                    const product = await env.DB.prepare("SELECT base_unit_price FROM product WHERE id = ?").bind(item.product_id).first();
                    if (product) {
                        subtotal += product.base_unit_price * item.quantity;
                        itemCount += item.quantity;
                    }
                }

                let total = subtotal;
                if (itemCount >= 50) total = subtotal * 0.8;
                else if (itemCount >= 10) total = subtotal * 0.9;

                // Create Address
                const addrId = Math.floor(Math.random() * 1000000);
                await env.DB.prepare("INSERT INTO address (id, first_name, last_name, phone, street_address, city, zip_code) VALUES (?, ?, ?, ?, ?, ?, ?)")
                    .bind(addrId, body.first_name, body.last_name, body.phone, body.address, body.city || 'Casablanca', body.zip_code).run();

                // Create Order
                await env.DB.prepare("INSERT INTO \"order\" (id, total_amount, status, shipping_address_id, created_at) VALUES (?, ?, 'pending', ?, datetime('now'))")
                    .bind(orderId, total, addrId).run();

                // Create Items
                for (const item of body.items) {
                    await env.DB.prepare("INSERT INTO order_item (order_id, product_id, quantity, price_per_unit_at_purchase, selected_variant) VALUES (?, ?, ?, ?, ?)")
                        .bind(orderId, item.product_id, item.quantity, 0, item.variant || '').run();
                }

                return new Response(JSON.stringify({ success: true, id: orderId, total }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path === "/api/v1/dashboard/" && request.method === "GET") {
                const { results: orders } = await env.DB.prepare("SELECT * FROM \"order\" LIMIT 10").all();
                const stats = await env.DB.prepare("SELECT COUNT(*) as count, SUM(total_amount) as total FROM \"order\"").first();
                return new Response(JSON.stringify({ orders, stats }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }

            if (path.match(/\/api\/v1\/orders\/([^/]+)\/invoice/) && request.method === "GET") {
                const orderId = path.split("/")[4];
                const order = await env.DB.prepare("SELECT * FROM \"order\" WHERE id = ?").bind(orderId).first();
                if (!order) return new Response("Not Found", { status: 404, headers: corsHeaders });

                const items = await env.DB.prepare("SELECT oi.*, p.name FROM order_item oi JOIN product p ON oi.product_id = p.id WHERE oi.order_id = ?").bind(orderId).all();

                try {
                    const pdfDoc = await PDFDocument.create();
                    const page = pdfDoc.addPage([595.28, 841.89]);
                    const { width, height } = page.getSize();
                    const fontBold = await pdfDoc.embedFont(StandardFonts.HelveticaBold);
                    const fontRegular = await pdfDoc.embedFont(StandardFonts.Helvetica);

                    page.drawText('MediUnit - Facture Officielle', { x: 50, y: height - 50, size: 20, font: fontBold });
                    page.drawText(`Commande ID: #${orderId}`, { x: 50, y: height - 80, size: 12, font: fontRegular });
                    page.drawText(`Total: MAD ${order.total_amount}`, { x: 50, y: height - 100, size: 14, font: fontBold });

                    let y = height - 140;
                    page.drawText('Articles:', { x: 50, y, size: 12, font: fontBold });
                    y -= 20;

                    for (const item of items.results) {
                        page.drawText(`- ${item.name} (x${item.quantity})`, { x: 50, y, size: 10, font: fontRegular });
                        y -= 15;
                    }

                    const pdfBytes = await pdfDoc.save();
                    return new Response(pdfBytes, {
                        headers: { "Content-Type": "application/pdf", ...corsHeaders }
                    });
                } catch (e) {
                    return new Response("PDF Generation Error", { status: 500, headers: corsHeaders });
                }
            }

            if (path.match(/^\/api\/v1\/products\/([^/]+)$/) && request.method === "DELETE") {
                const productId = path.split("/")[4];
                await env.DB.prepare("DELETE FROM product WHERE id = ?").bind(productId).run();
                return new Response(JSON.stringify({ success: true }), { headers: { "Content-Type": "application/json", ...corsHeaders } });
            }
            // --------------------

            return new Response(JSON.stringify({ status: "ok", message: "MediUnit API JS" }), {
                headers: { "Content-Type": "application/json", ...corsHeaders }
            });
        } catch (e) {
            return new Response(JSON.stringify({ error: e.message }), {
                status: 500,
                headers: { "Content-Type": "application/json", ...corsHeaders }
            });
        }
    }
};
