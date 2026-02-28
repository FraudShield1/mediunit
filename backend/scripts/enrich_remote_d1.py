import json
import os
import requests
import subprocess
from typing import List, Dict

# This script pulls from D1, enriches with OpenAI, and generates a SQL update for D1.

def get_clinical_specs(product_name: str, current_description: str) -> Dict:
    api_key = os.getenv("OPENAI_API_KEY")
    if not api_key:
        return {}

    prompt = f"""
As a Senior Medical Procurement Specialist for a B2B clinical marketplace (MediUnit), 
your task is to identify or infer 5-7 high-accuracy technical specifications for this product.

Product Name: {product_name}
Context: {current_description}

Return a valid JSON object in French with exactly 5-7 technical attributes (e.g., "Matériau", 
"Stérilisation", "Dimensions", "Certification", "Usage", "Conditionnement", "Type de pointe").

Rules:
1. Return ONLY the JSON object.
2. Values must be professional (e.g., "Oxyde d'éthylène (EO)", "Acier Inoxydable 304").
"""

    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {api_key}"
    }
    
    payload = {
        "model": "gpt-4o",
        "messages": [
            {"role": "system", "content": "Professional medical expert outputting only JSON."},
            {"role": "user", "content": prompt}
        ],
        "response_format": {"type": "json_object"}
    }

    try:
        response = requests.post("https://api.openai.com/v1/chat/completions", headers=headers, json=payload)
        response.raise_for_status()
        content = response.json()['choices'][0]['message']['content']
        return json.loads(content)
    except Exception as e:
        print(f"Error for {product_name}: {e}")
        return {}

def run_enrichment():
    # Fetch from D1 Remote
    print("Fetching from D1...")
    cmd = ["npx", "wrangler", "d1", "execute", "mediunit_db", "--remote", "--command=SELECT sku, name, description, specifications FROM product;", "--json"]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Error fetching: {result.stderr}")
        return

    try:
        data = json.loads(result.stdout)
        # Wrangler JSON output is a list of results, each with a 'results' key
        products = data[0]['results']
    except Exception as e:
        print(f"Error parsing D1 output: {e}")
        return

    sql_updates = []
    print(f"Enriching {len(products)} products...")
    
    for p in products:
        sku = p['sku']
        name = p['name']
        desc = p['description']
        current_specs = p['specifications']
        
        # Check if enrichment is needed (empty or not JSON)
        try:
            is_json = isinstance(json.loads(current_specs), dict) if current_specs else False
        except:
            is_json = False
            
        if not is_json or "Grade Médical" in str(current_specs):
            print(f"Processing: {name}")
            new_specs = get_clinical_specs(name, desc)
            if new_specs:
                specs_json = json.dumps(new_specs, ensure_ascii=False).replace("'", "''")
                sql = f"UPDATE product SET specifications = '{specs_json}' WHERE sku = '{sku}';"
                sql_updates.append(sql)

    if sql_updates:
        with open("backend/enrich_remote.sql", "w", encoding="utf-8") as f:
            f.write("\n".join(sql_updates))
        print(f"Generated backend/enrich_remote.sql with {len(sql_updates)} updates.")
    else:
        print("No products needed enrichment.")

if __name__ == "__main__":
    run_enrichment()
