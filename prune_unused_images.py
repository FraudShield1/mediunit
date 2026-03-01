import json
import os
import shutil

# Path to public images
images_dir = 'frontend/public/images'
used_images_db = '/tmp/used_images.json'

def prune_images():
    if not os.path.exists(used_images_db):
        print("Used images DB not found.")
        return

    with open(used_images_db, 'r') as f:
        data = json.load(f)
        products = data[0]['results']

    # Collect used filenames
    used_files = set()
    for p in products:
        url = p.get('image_url', '')
        if url.startswith('/images/'):
            filename = url.replace('/images/', '').split('?')[0] # remove query params if any
            used_files.add(filename)
        elif url and not url.startswith('http'):
            # Potentially relative path like "image.png"
            used_files.add(url)

    # Walk through images directory
    all_files = os.listdir(images_dir)
    removed_count = 0
    
    print(f"Total files in {images_dir}: {len(all_files)}")
    print(f"Used files identified: {len(used_files)}")

    for filename in all_files:
        if filename not in used_files and filename != '.gitkeep':
            file_path = os.path.join(images_dir, filename)
            if os.path.isfile(file_path):
                os.remove(file_path)
                removed_count += 1
    
    print(f"Pruned {removed_count} unused images.")

if __name__ == "__main__":
    prune_images()
