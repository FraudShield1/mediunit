import json
import subprocess
import shlex
import os

MAPPING_FILE = "/Users/naouri/CascadeProjects/windsurf-project-3/product_images/mapping.json"
BASE_DIR = "/Users/naouri/CascadeProjects/windsurf-project-3/"

with open(MAPPING_FILE, "r") as f:
    data = json.load(f)

# Group products that need actual image replacement based on the 'cdn-icons-png.flaticon' or if they are in the JSON
# Actually, the user wants us to import ALL images inside mapping.json

api_base = "https://mediunit-backend.a-naouri.workers.dev/api/v1/images/"
success_count = 0

for item in data:
    sku = item["sku"]
    local_path = os.path.join(BASE_DIR, item["local_path"])
    
    if not os.path.exists(local_path):
        print(f"File not found for SKU {sku}: {local_path}")
        continue
        
    filename = os.path.basename(local_path)
    
    # Upload to R2
    print(f"Uploading {filename} to R2...")
    cmd_upload = f'wrangler r2 object put mediunit-storage/{filename} --file "{local_path}" --remote'
    subprocess.run(shlex.split(cmd_upload), cwd="/Users/naouri/MediUnit", check=True)
    
    # Update D1 Database
    print(f"Updating DB for SKU {sku}...")
    new_url = api_base + filename
    sql = f"UPDATE product SET image_url = '{new_url}' WHERE sku = '{sku}'"
    cmd_db = f'wrangler d1 execute mediunit_db --remote --command "{sql}"'
    subprocess.run(shlex.split(cmd_db), cwd="/Users/naouri/MediUnit", check=True)
    
    success_count += 1
    
print(f"Successfully processed and updated {success_count} products.")
