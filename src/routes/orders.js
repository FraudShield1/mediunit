import { Hono } from 'hono';
import { PDFDocument, rgb, StandardFonts } from 'pdf-lib';
import JSZip from 'jszip';
import { isRateLimited, sendEmail } from '../utils/helpers.js';
import { OrderRepository } from '../repositories/OrderRepository.js';
import { OrderService } from '../services/OrderService.js';

const app = new Hono();

const adminOnly = async (c, next) => {
    const user = c.get('user');
    if (!user || user.role !== 'admin') {
        return c.json({ error: "Forbidden: Admin access required" }, 403);
    }
    await next();
};

app.get('/admin/all', adminOnly, async (c) => {
    const status = c.req.query("status");
    const q = c.req.query("q");
    const limit = Math.min(500, Math.max(1, parseInt(c.req.query("limit") || "200")));
    const offset = Math.max(0, parseInt(c.req.query("offset") || "0"));

    const orderRepo = new OrderRepository(c.env.DB);
    const results = await orderRepo.findAll({ status, q, limit, offset });
    return c.json(results);
});

app.get('/admin/:id', adminOnly, async (c) => {
    const orderId = c.req.param('id');
    const orderRepo = new OrderRepository(c.env.DB);
    
    const order = await orderRepo.findById(orderId);
    if (!order) {
        return c.json({ error: "Order not found" }, 404);
    }

    const items = await orderRepo.findItemsByOrderId(orderId);
    return c.json({ ...order, items: items || [] });
});

app.post('/', async (c) => {
    const env = c.env;
    const authUser = c.get('user');
    const ip = c.req.header("CF-Connecting-IP") || "local";
    
    if (await isRateLimited(env, ip, 3, 60, "orders")) {
        return c.json({ error: "Rate limit exceeded" }, 429);
    }
    
    const body = await c.req.json();
    const orderService = new OrderService(env.DB, env);
    const shipping = body.shipping_details || {};
    
    try {
        const { orderId, total, itemsWithPrice } = await orderService.processCheckout(body.items, shipping, authUser);
        
        let itemsListHtml = "<ul>";
        for (const item of itemsWithPrice) {
            itemsListHtml += `<li>${item.name} (x${item.quantity}) - MAD ${item.price.toFixed(2)}</li>`;
        }
        itemsListHtml += "</ul>";

        // Send Email
        const userEmail = shipping.email || body.email;
        if (userEmail) {
            await sendEmail(env, {
                to: userEmail,
                subject: `Confirmation de Commande MediUnit #${orderId}`,
                html: `
                    <div style="font-family: sans-serif; max-width: 600px; margin: auto; padding: 20px; border: 1px solid #eee;">
                        <h1 style="color: #1e5999;">Merci pour votre commande !</h1>
                        <p>Bonjour ${shipping.first_name || 'Client'},</p>
                        <p>Votre commande <strong>#${orderId}</strong> a bien été enregistrée et sera traitée sous 24-48h.</p>
                        <p><strong>Détails :</strong></p>
                        ${itemsListHtml}
                        <p><strong>Total :</strong> MAD ${total.toFixed(2)}</p>
                        <p>Le paiement se fera <strong>à la livraison</strong>.</p>
                        <hr/>
                        <p style="font-size: 12px; color: #666;">MediUnit Professional - Sourcing Clinique B2B</p>
                    </div>
                `
            });
        }

        // Admin Notification
        await sendEmail(env, {
            to: "abdel@mediunit.ma",
            subject: `Nouvelle Commande B2B: #${orderId}`,
            html: `<h1>Nouvelle Commande de ${shipping.first_name} ${shipping.last_name}</h1><p>Total: MAD ${total.toFixed(2)}</p><p>Clinique: ${shipping.clinic_name || 'N/A'}</p><p>Ville: ${shipping.city}</p>`
        });

        return c.json({ success: true, id: orderId, total }, 200);
    } catch (e) {
        return c.json({ error: e.message }, 400);
    }
});

app.get('/:id/invoice', async (c) => {
    const env = c.env;
    const authUser = c.get('user');
    const orderId = c.req.param('id');
    
    const orderRepo = new OrderRepository(env.DB);
    const order = await orderRepo.findById(orderId);
    
    if (!order) return new Response("Not Found", { status: 404 });

    const isOwner = authUser && order.user_id && authUser.sub === order.user_id;
    const isAdmin = authUser && authUser.role === 'admin';
    if (!isOwner && !isAdmin) {
        return c.json({ error: "Unauthorized" }, 401);
    }

    const items = await orderRepo.findItemsByOrderId(orderId);

    const cacheKey = `invoice-${orderId}.pdf`;
    try {
        const cachedPdf = await env.STORAGE.get(cacheKey);
        if (cachedPdf) {
            return new Response(cachedPdf.body, {
                headers: {
                    "Content-Type": "application/pdf",
                    "Content-Disposition": `inline; filename="Facture_${orderId}.pdf"`
                }
            });
        }
    } catch (e) { console.error("R2 cache req error", e); }

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

        for (const item of items) {
            page.drawText(`- ${item.name}(x${item.quantity})`, { x: 50, y, size: 10, font: fontRegular });
            y -= 15;
        }

        const pdfBytes = await pdfDoc.save();
        try {
            await env.STORAGE.put(cacheKey, pdfBytes, {
                httpMetadata: { contentType: "application/pdf" }
            });
        } catch (e) { console.error("R2 invoice put error", e); }

        return new Response(pdfBytes, {
            headers: { "Content-Type": "application/pdf" }
        });
    } catch (e) {
        return new Response("PDF Generation Error", { status: 500 });
    }
});

app.get('/pack/:id', async (c) => {
    const env = c.env;
    const authUser = c.get('user');
    const orderId = c.req.param('id');
    
    const orderRepo = new OrderRepository(env.DB);
    const order = await orderRepo.findById(orderId);

    if (!order || order.user_id !== authUser.sub) {
        return c.json({ error: "Order not found or access denied" }, 404);
    }

    const items = await env.DB.prepare(`
        SELECT p.name, p.slug, b.name as brand_name, b.ce_certificate_url
        FROM order_item oi
        JOIN product p ON oi.product_id = p.id
        JOIN brand b ON p.brand_id = b.id
        WHERE oi.order_id = ?
    `).bind(orderId).all();

    const zip = new JSZip();
    const folder = zip.folder(`MediUnit_Regulatory_Pack_Order_${orderId}`);

    for (const p of items.results) {
        if (p.ce_certificate_url) {
            try {
                const certResp = await fetch(p.ce_certificate_url);
                if (certResp.ok) {
                    const certBytes = await certResp.arrayBuffer();
                    folder.file(`CE_Certificate_${p.brand_name.replace(/[^a-z0-9]/gi, '_')}.pdf`, certBytes);
                }
            } catch (e) { console.error("Error fetching CE cert", p.ce_certificate_url, e); }
        }
    }

    const zipBytes = await zip.generateAsync({ type: "uint8array" });

    return new Response(zipBytes, {
        headers: {
            "Content-Type": "application/zip",
            "Content-Disposition": `attachment; filename="MediUnit_Pack_${orderId}.zip"`
        }
    });
});

export default app;
