import json
import sqlite3
import os
import re
import subprocess

# Load professional data
with open('products_data.json', 'r') as f:
    prof_data = json.load(f)

# Create a mapping of Slug -> Professional Data
def slugify(text):
    text = text.lower()
    text = re.sub(r'[^a-z0-9]+', '-', text)
    return text.strip('-')

prof_map = {}
for item in prof_data:
    slug = slugify(item.get('nameFr', ''))
    prof_map[slug] = item
    if item.get('sku'):
        prof_map[item.get('sku')] = item

# Brands mapping to IDs
brand_names = {
    'MediUnit': 1,
    'B. Braun': 2,
    'BD': 3,
    'Teleflex': 4,
    'Greatcare': 5,
    'Pharmaplast': 6,
    'Egemen': 7,
    'Coloplast': 8,
    'Arrow': 4,
}

def get_brand_id(brand_name):
    if not brand_name: return 1
    for key, val in brand_names.items():
        if key.lower() in brand_name.lower():
            return val
    return 1

sql_updates = []

# Get products from remote D1 to match
result = subprocess.run(['npx', 'wrangler', 'd1', 'execute', 'mediunit_db', '--remote', '--command=SELECT id, sku, slug, name FROM product;', '--json'], capture_output=True, text=True)
if result.returncode == 0:
    # Wrangler returns a list, first element has results
    output_json = json.loads(result.stdout)
    d1_products = output_json[0]['results']
    for p in d1_products:
        match = prof_map.get(p['sku']) or prof_map.get(p['slug'])
        if match:
            b_id = get_brand_id(match.get('brand'))
            b_name = match.get('brand', 'MediUnit').replace("'", "''")
            specs_json = json.dumps(match.get('specs', {})).replace("'", "''")
            
            sql = f"UPDATE product SET brand_id = {b_id}, brand = '{b_name}', specifications = '{specs_json}' WHERE id = {p['id']};"
            sql_updates.append(sql)

with open('update_prof_brands.sql', 'w') as f:
    f.write('\n'.join(sql_updates))

print(f"Generated {len(sql_updates)} updates in update_prof_brands.sql")
