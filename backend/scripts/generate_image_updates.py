import json

with open("products_data.json", "r", encoding="utf-8") as f:
    products = json.load(f)

sql_statements = []
for p in products:
    sku = p.get('SKU')
    image_url = p.get('Image_URL')
    
    # We only want to update if there's a valid remote image URL
    if sku and image_url and image_url.startswith('http'):
        # Escape single quotes in URLs just in case
        image_url = image_url.replace("'", "''")
        sku = sku.replace("'", "''")
        sql = f"UPDATE product SET image_url = '{image_url}' WHERE sku = '{sku}';"
        sql_statements.append(sql)

with open("backend/update_images.sql", "w", encoding="utf-8") as f:
    f.write("-- Auto-generated Script to Restore Scraped Brand Images\n")
    f.write("\n".join(sql_statements))
    f.write("\n")

print(f"Generated {len(sql_statements)} UPDATE statements.")
