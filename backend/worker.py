import traceback
from js import Response
from fpdf import FPDF
import io

async def on_fetch(request, env):
    try:
        url = request.url
        path = url.split("?")[0].split(".dev")[-1].split(".com")[-1]
        
        # Simple Router
        if path.endswith("/api/v1/categories"):
            return await get_categories(env)
        
        if path.endswith("/api/v1/products"):
            # Handle search/category filtering
            params = {}
            if "?" in url:
                query_str = url.split("?")[1]
                for pair in query_str.split("&"):
                    if "=" in pair:
                        k, v = pair.split("=")
                        params[k] = v
            return await get_products(env, params)
        
        if "/api/v1/products/" in path:
            slug = path.split("/api/v1/products/")[-1]
            return await get_product_detail(env, slug)

        if path.endswith("/api/v1/orders") and request.method == "POST":
            return await create_order(request, env)

        if "/api/v1/orders/" in path and "/invoice" in path:
            order_id = path.split("/api/v1/orders/")[1].split("/invoice")[0]
            return await get_invoice(env, order_id)
        
        return Response.new(json.dumps({"status": "ok", "message": "MediUnit Backend API"}), 
                           headers={"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"})
    except Exception as e:
        return Response.new(json.dumps({"error": str(e), "trace": traceback.format_exc()}), 
                           status=500, headers={"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"})

async def get_categories(env):
    results = await env.DB.prepare("SELECT * FROM category").all()
    py_res = [dict(r) for r in results.results]
    return Response.new(json.dumps(py_res), 
                       headers={"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"})

async def get_products(env, params):
    category_slug = params.get("category_slug")
    search = params.get("search")
    
    sql = "SELECT p.*, c.name as category_name FROM product p LEFT JOIN category c ON p.category_id = c.id WHERE 1=1"
    args = []
    
    if category_slug:
        sql += " AND c.slug = ?"
        args.append(category_slug)
        
    if search:
        sql += " AND p.name LIKE ?"
        args.append(f"%{search}%")
        
    sql += " ORDER BY popularity DESC LIMIT 100"
    
    stmt = env.DB.prepare(sql)
    for arg in args:
        stmt = stmt.bind(arg)
        
    results = await stmt.all()
    py_res = [dict(r) for r in results.results]
    return Response.new(json.dumps(py_res), 
                       headers={"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"})

async def get_product_detail(env, slug):
    result = await env.DB.prepare("SELECT p.*, c.name as category_name FROM product p LEFT JOIN category c ON p.category_id = c.id WHERE p.slug = ?").bind(slug).first()
    if not result:
        return Response.new(json.dumps({"error": "Product not found"}), 
                           status=404, headers={"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"})
    
    # Mock some discounts
    data = dict(result)
    data["discounts"] = []
    data["category"] = {"name": data.get("category_name", ""), "slug": data.get("category_name", "").lower()}
    # Ensure brand and specifications are present
    if "brand" not in data: data["brand"] = "MediUnit Professional"
    if "specifications" not in data: data["specifications"] = "Grade Médical, Certifié CE, Stérile."
    
    return Response.new(json.dumps(data), 
                       headers={"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"})

async def create_order(request, env):
    body = await request.json()
    items = body.get("items", [])
    
    # Simple order creation for worker
    import uuid
    order_id = str(uuid.uuid4())
    
    # Store order in D1 (Simplified - in real case we would calculate totals)
    # We calculate total based on a quick check
    total = 0
    for item in items:
        p_id = item.get("product_id")
        qty = item.get("quantity", 1)
        res = await env.DB.prepare("SELECT base_unit_price FROM product WHERE id = ?").bind(p_id).first()
        if res:
            total += res.base_unit_price * qty

    # Insert order
    await env.DB.prepare("INSERT INTO \"order\" (id, total_amount, status, created_at, user_id) VALUES (?, ?, ?, datetime('now'), ?)").bind(order_id, total, "pending", "default-user-id").run()
    
    # Insert items
    for item in items:
        await env.DB.prepare("INSERT INTO orderitem (order_id, product_id, quantity, price_per_unit_at_purchase) VALUES (?, ?, ?, ?)").bind(order_id, item.get("product_id"), item.get("quantity"), 0).run()

    return Response.new(json.dumps({"id": order_id, "status": "pending", "total_amount": total}), 
                       headers={"Content-Type": "application/json", "Access-Control-Allow-Origin": "*"})

async def get_invoice(env, order_id):
    # Fetch order and items
    order = await env.DB.prepare("SELECT * FROM \"order\" WHERE id = ?").bind(order_id).first()
    if not order:
        return Response.new(json.dumps({"error": "Order not found"}), status=404, headers={"Access-Control-Allow-Origin": "*"})
    
    items = await env.DB.prepare("SELECT oi.*, p.name as product_name FROM orderitem oi JOIN product p ON oi.product_id = p.id WHERE oi.order_id = ?").bind(order_id).all()
    
    # Generate PDF
    pdf = FPDF()
    pdf.add_page()
    pdf.set_font("helvetica", "B", 16)
    pdf.cell(0, 10, "MediUnit - Facture Officielle", ln=True, align='C')
    pdf.set_font("helvetica", "", 10)
    pdf.cell(0, 10, "Service des Achats Cliniques - Casablanca", ln=True, align='C')
    pdf.ln(10)
    
    pdf.set_font("helvetica", "B", 12)
    pdf.cell(0, 10, f"Commande N: {order_id[:8]}", ln=True)
    pdf.set_font("helvetica", "", 10)
    pdf.ln(5)
    
    # Table headers
    pdf.set_font("helvetica", "B", 10)
    pdf.cell(100, 10, "Produit", 1)
    pdf.cell(40, 10, "Quantite", 1, align='C')
    pdf.cell(40, 10, "Total (MAD)", 1, align='C')
    pdf.ln()
    
    pdf.set_font("helvetica", "", 10)
    for item in items.results:
        pdf.cell(100, 10, str(item.product_name)[:40], 1)
        pdf.cell(40, 10, str(item.quantity), 1, align='C')
        pdf.cell(40, 10, str(item.price_per_unit_at_purchase * item.quantity), 1, align='C')
        pdf.ln()
    
    pdf.set_font("helvetica", "B", 12)
    pdf.cell(140, 10, "TOTAL", 1, align='R')
    pdf.cell(40, 10, f"{order.total_amount:.2f}", 1, align='C')
    
    pdf_bytes = pdf.output()
    
    return Response.new(pdf_bytes, headers={
        "Content-Type": "application/pdf",
        "Content-Disposition": f"attachment; filename=Facture_{order_id[:8]}.pdf",
        "Access-Control-Allow-Origin": "*"
    })
