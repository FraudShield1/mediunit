import json
import os
import requests

def load_env():
    if os.path.exists('.env'):
        with open('.env') as f:
            for line in f:
                if '=' in line:
                    key, value = line.split('=', 1)
                    os.environ[key.strip()] = value.strip().strip('"')

load_env()
OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')

def get_premium_clinical_data(product_name, sku, current_specs):
    prompt = f"""
    You are a Senior Clinical Product Specialist. Create a professional, premium-grade technical description for this medical product:
    Product: {product_name}
    SKU: {sku}
    Current (basic) specs: {current_specs}
    
    Requirements:
    1. A detailed clinical description in French (approx 3-4 paragraphs). Use professional terminology (e.g. biocompatibilité, ergonomie, atraumatique).
    2. A structured HTML table (using Tailwind-friendly classes or clean professional CSS style) containing ALL technical specifications:
       - Material (Matériau)
       - Sterilization (Stérilisation)
       - Compliance (Conformité CE / ISO)
       - Target Use (Usage Clinique)
       - Key Features (Caractéristiques)
    3. Return valid JSON only with keys: "description" (the HTML string including paragraphs and the table) and "specs_json" (a JSON object for the searchable dynamic table).
    
    Make it look like a high-end medical manufacturer's data sheet (e.g., Teleflex, B. Braun style).
    """

    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {OPENAI_API_KEY}"
    }
    
    payload = {
        "model": "gpt-4o",
        "messages": [{"role": "user", "content": prompt}],
        "response_format": {"type": "json_object"}
    }
    
    response = requests.post("https://api.openai.com/v1/chat/completions", json=payload, headers=headers)
    res_data = response.json()
    content = json.loads(res_data['choices'][0]['message']['content'])
    return content

import concurrent.futures

def process_product(p):
    print(f"Processing: {p['name']}")
    try:
        enriched = get_premium_clinical_data(p['name'], p['sku'], p['specifications'])
        desc = enriched['description'].replace("'", "''")
        specs = json.dumps(enriched['specs_json']).replace("'", "''")
        return f"UPDATE product SET description = '{desc}', specifications = '{specs}' WHERE id = {p['id']};"
    except Exception as e:
        print(f"Failed to enrich {p['name']}: {e}")
        return None

def enrich_all_in_d1():
    get_all_cmd = 'npx wrangler d1 execute mediunit_db --remote --command="SELECT id, name, sku, specifications, slug FROM product;" --json'
    import subprocess
    result = subprocess.run(get_all_cmd, shell=True, capture_output=True, text=True)
    
    try:
        data = json.loads(result.stdout)
        products = data[0]['results']
    except Exception as e:
        print(f"Error parsing D1: {e}")
        return

    print(f"Enriching {len(products)} products concurrently...")
    
    sql_updates = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
        future_to_product = {executor.submit(process_product, p): p for p in products}
        for future in concurrent.futures.as_completed(future_to_product):
            res = future.result()
            if res:
                sql_updates.append(res)

    with open('premium_enrichment.sql', 'w') as f:
        f.write("\n".join(sql_updates))
    
    print("Generated premium_enrichment.sql.")

if __name__ == "__main__":
    enrich_all_in_d1()

if __name__ == "__main__":
    enrich_all_in_d1()
