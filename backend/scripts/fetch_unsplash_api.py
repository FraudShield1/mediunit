import json
import urllib.request
import urllib.parse
import time
import subprocess

# Demo Client ID for Unsplash (Rate limited to 50/hr), fallback to high quality randoms
CLIENT_ID = "2v_p4o2X3hVzL0Yt89t1o6O4r_jT0kOqU0N7P2c9H_Y"

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result.stdout.strip()

def search_unsplash(query):
    url = f"https://api.unsplash.com/search/photos?page=1&query={urllib.parse.quote(query)}&client_id={CLIENT_ID}&orientation=landscape"
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(req) as response:
            data = json.loads(response.read().decode())
            if data['results']:
                # Return the regular size image url
                return data['results'][0]['urls']['regular']
    except Exception as e:
        print(f"Error searching unsplash for {query}: {e}")
    return None

def main():
    print("Fetching products from D1...")
    query = "SELECT id, name, sku, brand_entity_id FROM product"
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
        name = p.get('name', '')
        sku = p.get('sku', '')
        
        # Determine search keywords based on product name
        search_query = "medical equipment"
        name_lower = name.lower()
        if 'aiguil' in name_lower or 'seringue' in name_lower or 'syringe' in name_lower:
            search_query = "medical syringe hospital"
        elif 'cath' in name_lower or 'perfus' in name_lower:
            search_query = "iv drip hospital medical"
        elif 'gant' in name_lower or 'glove' in name_lower:
            search_query = "blue medical gloves doctor"
        elif 'sonde' in name_lower or 'tube' in name_lower:
            search_query = "medical tubing hospital"
        elif 'pansement' in name_lower or 'compresse' in name_lower:
            search_query = "white medical bandages"
        elif 'masque' in name_lower:
            search_query = "oxygen mask medical"
        else:
            search_query = f"medical {name.split(' ')[0]} clinic"

        print(f"[{p['id']}] Searching Unsplash for '{search_query}'...")
        image_url = search_unsplash(search_query)
        
        if image_url:
            print(f" -> Found: {image_url}")
            safe_url = image_url.replace("'", "''")
            update_query = f"UPDATE product SET image_url = '{safe_url}' WHERE id = {p['id']};"
            run_cmd(f'npx wrangler d1 execute mediunit_db --remote --command="{update_query}"')
            updated_count += 1
        
        time.sleep(1.5) # respect rate limits

    print(f"Finished. Updated {updated_count} images.")

if __name__ == "__main__":
    main()
