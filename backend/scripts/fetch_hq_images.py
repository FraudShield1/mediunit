import asyncio
import json
import subprocess
import time
from duckduckgo_search import DDGS

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result.stdout.strip()

async def main():
    print("Fetching products from D1...")
    query = """
    SELECT p.id, p.name, p.sku, p.image_url, b.name as brand_name 
    FROM product p 
    LEFT JOIN brand b ON p.brand_id = b.id
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
    with DDGS() as ddgs:
        for p in products:
            img_url = p.get('image_url', '')
            brand = p.get('brand_name') or ''
            
            if img_url.startswith('/images/') or 'Generi' in img_url or 'fallback' in img_url:
                search_term = f"{brand} {p['sku']} {p['name']}"
                print(f"[{p['id']}] Searching for: {search_term}")
                
                try:
                    # Search images
                    results = list(ddgs.images(search_term, max_results=5))
                    hq_url = None
                    
                    # Strict brand checking
                    brand_lower = brand.lower().split(' ')[0] if brand else ''
                    for res in results:
                        src_url = res.get('url', '').lower()
                        img_src = res.get('image', '').lower()
                        
                        # Only accept if brand name is in the source URL or image URL
                        if brand_lower and len(brand_lower) > 2 and (brand_lower in src_url or brand_lower in img_src):
                            hq_url = res['image']
                            break
                        # Also accept common medical suppliers if brand isn't found
                        if 'medical' in src_url or 'mediq' in src_url or 'health' in src_url or 'medline' in src_url or 'bbraun' in src_url or 'coloplast' in src_url:
                            hq_url = res['image']
                            break
                            
                    if hq_url:
                        print(f" -> Found verified HQ Image: {hq_url}")
                        # Must escape quotes in SQL
                        safe_url = hq_url.replace("'", "''")
                        update_query = f"UPDATE product SET image_url = '{safe_url}' WHERE id = {p['id']};"
                        run_cmd(f'npx wrangler d1 execute mediunit_db --remote --command="{update_query}"')
                        updated_count += 1
                    else:
                        print(" -> No verified brand image found. Retaining original.")
                except Exception as e:
                    print(" -> Search error:", e)
                
                time.sleep(2) # rate limit prevention

    print(f"Finished. Updated {updated_count} images.")

if __name__ == "__main__":
    asyncio.run(main())
