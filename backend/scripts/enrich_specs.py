import json
import os
import requests
from typing import List, Dict

# This script assumes OPENAI_API_KEY is set in the environment.
# If not, it will notify the user.

def get_clinical_specs(product_name: str, current_description: str) -> Dict:
    api_key = os.getenv("OPENAI_API_KEY")
    if not api_key:
        print("Error: OPENAI_API_KEY not found in environment.")
        return {}

    prompt = f"""
As a Senior Medical Procurement Specialist for a B2B clinical marketplace (MediUnit), 
your task is to extract or infer high-accuracy technical specifications for the following product.

Product Name: {product_name}
Context: {current_description}

You must return a valid JSON object containing exactly 4-6 key technical attributes that a doctor 
or clinical manager would need to see (e.g., "Matériau", "Stérilisation", "Dimensions", "Conformité", 
"Classe DM", "Sans Latex").

Rules:
1. Language: French.
2. Ensure values are precisely formatted (e.g., "G25 - 90mm", "Oxyde d'éthylène (EO)").
3. Do not include SKU or Brand (these are already handled).
4. Return ONLY the JSON object.

JSON Format:
{{
  "Attribut 1": "Valeur 1",
  "Attribut 2": "Valeur 2"
}}
"""

    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {api_key}"
    }
    
    payload = {
        "model": "gpt-4o",
        "messages": [
            {"role": "system", "content": "You are a professional medical equipment expert."},
            {"role": "user", "content": prompt}
        ],
        "response_format": {"type": "json_object"}
    }

    try:
        response = requests.post("https://api.openai.com/v1/chat/completions", headers=headers, json=payload)
        response.raise_for_status()
        result = response.json()
        content = result['choices'][0]['message']['content']
        return json.loads(content)
    except Exception as e:
        print(f"Error enriching {product_name}: {e}")
        return {}

def enrich_data(json_path: str):
    with open(json_path, 'r', encoding='utf-8') as f:
        products = json.load(f)

    enriched_count = 0
    # For safety/cost in this environment, we only process products with empty specs
    for p in products:
        if not p.get('specs') or len(p['specs']) == 0:
            print(f"Enriching: {p.get('nameFr')}")
            new_specs = get_clinical_specs(p.get('nameFr'), p.get('descriptionFr', ''))
            if new_specs:
                p['specs'] = new_specs
                enriched_count += 1

    with open(json_path, 'w', encoding='utf-8') as f:
        json.dump(products, f, indent=2, ensure_ascii=False)
    
    print(f"Successfully enriched {enriched_count} products.")

if __name__ == "__main__":
    enrich_data('products_data.json')
