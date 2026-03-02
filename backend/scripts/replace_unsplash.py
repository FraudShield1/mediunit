import asyncio
import json
import subprocess
import time
import requests
from duckduckgo_search import DDGS
import re

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True, cwd='/Users/naouri/MediUnit/backend')
    return result.stdout.strip()

def check_image_url(url):
    try:
        r = requests.head(url, timeout=4, headers={"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"})
        if r.status_code == 200 and 'image' in r.headers.get('Content-Type', ''):
            return True
        # fallback to GET if HEAD isn't enough
        r = requests.get(url, timeout=4, headers={"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"}, stream=True)
        if r.status_code == 200 and 'image' in r.headers.get('Content-Type', ''):
            return True
        return False
    except:
        return False

def format_name(name):
    return re.sub(r'\(.*?\)', '', name).strip()

async def main():
    try:
        with open('/Users/naouri/MediUnit/unsplash_list.json', 'r') as f:
            data = json.load(f)
        products = data[0].get('results', [])
    except Exception as e:
        print("Failed reading list:", e)
        return

    print(f"Loaded {len(products)} products from unsplash_list.json")
    
    updated_count = 0
    sql_updates = []
    
    with DDGS() as ddgs:
        for p in products:
            clean_name = format_name(p['name'])
            search_term = f"{clean_name} medical product white background"
            if 'sku' in p and len(p['sku']) > 3:
                search_term = f"{clean_name} {p['sku']} medical product white background"
            
            print(f"[{p['id']}] Searching: {search_term}")
            
            try:
                results = list(ddgs.images(search_term, max_results=12))
                hq_url = None
                
                for res in results:
                    src_url = res.get('image', '')
                    # Avoid stock photo domains
                    bad_domains = ['unsplash', 'pexels', 'istock', 'shutterstock', '123rf', 'getty', 'dreamstime', 'alamy']
                    if any(x in src_url.lower() for x in bad_domains):
                        continue
                        
                    if check_image_url(src_url):
                        hq_url = src_url
                        break
                        
                if hq_url:
                    print(f" -> Found valid HQ Image: {hq_url}")
                    # Must escape quotes for SQL
                    safe_url = hq_url.replace("'", "''")
                    sql = f"UPDATE product SET image_url = '{safe_url}' WHERE id = {p['id']};"
                    sql_updates.append(sql)
                    updated_count += 1
                else:
                    print(" -> No valid image found.")
            except Exception as e:
                print(" -> Search error:", e)
            
            time.sleep(1.5) # rate limit prevention

    if sql_updates:
        sql_path = "/Users/naouri/MediUnit/backend/unsplash_replacements.sql"
        with open(sql_path, "w", encoding="utf-8") as f:
            f.write("\n".join(sql_updates))
        print(f"Generated {sql_path}. Executing on D1 Remote...")
        output = run_cmd(f'npx wrangler d1 execute mediunit_db --remote --file "{sql_path}"')
        print(output)
    
    print(f"Process complete. Updated {updated_count} out of {len(products)} products.")

if __name__ == "__main__":
    asyncio.run(main())
