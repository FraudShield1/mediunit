import asyncio
import json
import urllib.request
import urllib.parse
import urllib.error
import subprocess
import time

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result.stdout.strip()

def search_image(query):
    # Free alternative: SearXNG public instances or Wikimedia strictly for brands, but we'll try a generic HTML scraping of Google Images as a fallback since APIs require keys.
    # Note: Google HTML scraping is flaky. Let's use a public API like Wikimedia Commons for medical tools if possible, or try duckduckgo html.
    
    encoded_query = urllib.parse.quote(query)
    # Using a free public API for images (like Unsplash API if we had a key, or Wikimedia)
    # Since we need specific brands, Wikimedia might lack them.
    # Let's try DuckDuckGo HTML version explicitly bypassing the API limits of the python library
    
    url = f"https://html.duckduckgo.com/html/?q={encoded_query}+image"
    
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'})
    
    try:
        html = urllib.request.urlopen(req).read().decode('utf-8')
        # Very hacky extraction of url from duckduckgo html
        # Look for something that looks like an image URL 
        import re
        urls = re.findall(r'src="([^"]+)"', html)
        for u in urls:
            if u.startswith('//'):
                u = 'https:' + u
            if 'external' in u and 'duckduckgo' in u:
                # DDG uses a proxy for external images
                # Try to extract the real one
                qs = urllib.parse.urlparse(u).query
                params = urllib.parse.parse_qs(qs)
                if 'u' in params:
                    img_url = params['u'][0]
                    if img_url.lower().endswith(('.png', '.jpg', '.jpeg')):
                        return img_url
        return None
    except Exception as e:
        print("HTML scrape error", e)
        return None


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
    
    for p in products:
        img_url = p.get('image_url', '')
        brand = p.get('brand_name') or ''
        
        if img_url.startswith('/images/') or 'Generi' in img_url or 'fallback' in img_url:
            search_term = f"{brand} {p['sku']} {p['name']} medical product"
            print(f"[{p['id']}] Searching for: {search_term}")
            
            hq_url = search_image(search_term)
            
            if hq_url:
                print(f" -> Found Image: {hq_url}")
                # Must escape quotes in SQL
                safe_url = hq_url.replace("'", "''")
                update_query = f"UPDATE product SET image_url = '{safe_url}' WHERE id = {p['id']};"
                run_cmd(f'npx wrangler d1 execute mediunit_db --remote --command="{update_query}"')
                updated_count += 1
            else:
                print(" -> No image found via HTML scrape.")

            time.sleep(2) # Strict delay to avoid ban

    print(f"Finished. Updated {updated_count} images.")

if __name__ == "__main__":
    asyncio.run(main())
