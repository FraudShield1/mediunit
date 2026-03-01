import json

async def on_fetch(request, env):
    from js import Response
    
    cors_headers = {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, POST, PATCH, DELETE, OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type",
    }
    
    try:
        path = "/" + "/".join(request.url.split("/")[3:])
        if "?" in path: path = path.split("?")[0]
        
        if request.method == "OPTIONS":
            return Response.new("", headers=cors_headers)

        if "api/v1/categories" in path:
            res = await env.DB.prepare("SELECT * FROM category").all()
            data = [dict(r) for r in res.results]
            return Response.new(json.dumps(data), headers={"Content-Type": "application/json", **cors_headers})
        
        if "api/v1/products" in path:
            # Handle product detail or list
            if path.endswith("products"):
                res = await env.DB.prepare("SELECT * FROM product LIMIT 50").all()
                data = [dict(r) for r in res.results]
                return Response.new(json.dumps(data), headers={"Content-Type": "application/json", **cors_headers})
            
            # Detail
            slug = path.split("/")[-1]
            res = await env.DB.prepare("SELECT * FROM product WHERE slug = ?").bind(slug).first()
            if not res:
                return Response.new(json.dumps({"error": "not found"}), status=404, headers=cors_headers)
            
            data = dict(res)
            # Add minimal category/brand for frontend compatibility
            data["category"] = {"name": "Medical", "slug": "medical"}
            data["brand_entity"] = {"name": data.get("brand", "MediUnit"), "manufacturer": ""}
            
            return Response.new(json.dumps(data), headers={"Content-Type": "application/json", **cors_headers})

        return Response.new(json.dumps({"status": "ok"}), headers={"Content-Type": "application/json", **cors_headers})
    except Exception as e:
        return Response.new(json.dumps({"error": str(e)}), status=500, headers=cors_headers)
