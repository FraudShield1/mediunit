import asyncio
import json
import subprocess
import time
import urllib.request

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result.stdout.strip()

# High-quality medical image fallbacks (Unsplash Source API allows keyword search)
def get_unsplash_url(keyword):
    # Unsplash Source API was deprecated, using direct high-res IDs for medical gear
    medical_images = {
        "syringe": "https://images.unsplash.com/photo-1584362917165-526a968579e8?w=800&q=80",
        "needle": "https://images.unsplash.com/photo-1584362917165-526a968579e8?w=800&q=80",
        "catheter": "https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?w=800&q=80",
        "tube": "https://images.unsplash.com/photo-1579684385127-1ef15d508118?w=800&q=80",
        "mask": "https://images.unsplash.com/photo-1585435557343-3b092031a831?w=800&q=80",
        "kit": "https://images.unsplash.com/photo-1584036561566-baf8f5f1b144?w=800&q=80",
        "default": "https://images.unsplash.com/photo-1584982751601-97dcc096659c?w=800&q=80",
        "gloves": "https://images.unsplash.com/photo-1584820927498-cafe8c1c9111?w=800&q=80"
    }
    
    kw = keyword.lower()
    if 'aiguille' in kw or 'rachian' in kw or 'syringe' in kw: return medical_images['syringe']
    if 'cath' in kw or 'cvc' in kw: return medical_images['catheter']
    if 'sonde' in kw or 'tube' in kw or 'canule' in kw: return medical_images['tube']
    if 'masque' in kw or 'laryng' in kw: return medical_images['mask']
    if 'kit' in kw or 'set' in kw: return medical_images['kit']
    if 'gant' in kw or 'glove' in kw: return medical_images['gloves']
    
    return medical_images['default']

async def main():
    print("Fetching products from D1...")
    query = """
    SELECT id, name, image_url
    FROM product 
    """
    output = run_cmd(f'npx wrangler d1 execute mediunit_db --remote --command="{query}" --json')
    
    try:
        json_start = output.find('[')
        if json_start != -1:
            json_str = output[json_start:]
            parsed = json.loads(json_str)
            products = parsed[0].get('results', [])
        else:
            print("No JSON found.")
            return
    except Exception as e:
        print("Failed to parse D1 output:", e)
        return

    print(f"Found {len(products)} products.")
    
    updated_count = 0
    
    for p in products:
        img_url = p.get('image_url', '')
        name = p.get('name', '')
        
        # Only replace bad resolution local files
        if img_url.startswith('/images/') or 'Generi' in img_url or 'fallback' in img_url:
            hq_url = get_unsplash_url(name)
            
            print(f"[{p['id']}] Updating {name} -> {hq_url}")
            safe_url = hq_url.replace("'", "''")
            update_query = f"UPDATE product SET image_url = '{safe_url}' WHERE id = {p['id']};"
            run_cmd(f'npx wrangler d1 execute mediunit_db --remote --command="{update_query}"')
            updated_count += 1
            time.sleep(0.5)

    print(f"Finished. Updated {updated_count} images.")

if __name__ == "__main__":
    asyncio.run(main())
