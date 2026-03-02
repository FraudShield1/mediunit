import json
import subprocess
import requests

def check_image_url(url):
    try:
        # Some servers block HEAD or require a user-agent
        headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"}
        r = requests.head(url, timeout=5, headers=headers)
        if r.status_code == 200:
            return True
        r = requests.get(url, timeout=5, headers=headers, stream=True)
        if r.status_code == 200:
            return True
        return False
    except:
        return False

def main():
    try:
        with open('/Users/naouri/MediUnit/unsplash_list.json', 'r') as f:
            data = json.load(f)
        products = data[0].get('results', [])
    except Exception as e:
        print("Failed reading list:", e)
        return

    print(f"Loaded {len(products)} products from unsplash_list.json")
    
    sql_updates = []
    updated_count = 0
    
    for p in products:
        prod_id = p.get('id')
        name = p.get('name')
        
        # The URL is stored under the "\\n" key due to a previous formatting glitch
        target_url = p.get('\\n') or p.get('\n')
        
        if not target_url:
            print(f"[{prod_id}] {name} - No URL found in JSON.")
            continue
            
        print(f"[{prod_id}] Validating {target_url}...")
        
        # We assume the URLs provided by the user/previous-script are already highly curated, 
        # but we do a quick check to prevent completely broken images.
        if check_image_url(target_url):
            safe_url = target_url.replace("'", "''")
            sql = f"UPDATE product SET image_url = '{safe_url}' WHERE id = {prod_id};"
            sql_updates.append(sql)
            updated_count += 1
            print(f" -> Valid! Scheduled for update.")
        else:
            print(f" -> Invalid or unreachable URL. Falling back to generic medical icon.")
            # Fallback for unreachable ones (e.g. some MedicalExpo URLs might block us)
            fallback = "https://cdn-icons-png.flaticon.com/512/2966/2966327.png"
            sql = f"UPDATE product SET image_url = '{fallback}' WHERE id = {prod_id};"
            sql_updates.append(sql)
            updated_count += 1

    if sql_updates:
        sql_path = "/Users/naouri/MediUnit/backend/apply_images.sql"
        with open(sql_path, "w", encoding="utf-8") as f:
            f.write("\n".join(sql_updates))
            
        print(f"\nGenerated {sql_path} with {len(sql_updates)} queries. Executing on D1 Remote...")
        
        cmd = ["npx", "wrangler", "d1", "execute", "mediunit_db", "--remote", "--file", sql_path]
        result = subprocess.run(cmd, capture_output=True, text=True, cwd='/Users/naouri/MediUnit/backend')
        print(result.stdout)
        if result.stderr:
            print("Errors:", result.stderr)
            
    print(f"Process complete. Prepared {updated_count} out of {len(products)} products.")

if __name__ == "__main__":
    main()
