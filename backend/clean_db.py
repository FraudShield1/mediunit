import sqlite3

def clean_database():
    conn = sqlite3.connect('mediunit.db')
    cursor = conn.cursor()

    try:
        print("1. Replacing the 'car' image...")
        # Find any product using an image with 'car' in the URL (likely a placeholder error)
        cursor.execute("SELECT id, name, image_url FROM product WHERE image_url LIKE '%car%'")
        car_products = cursor.fetchall()
        for prod in car_products:
            print(f"Fixing image for {prod[1]}")
            # Replace with a generic medical supply placeholder or empty string
            cursor.execute("UPDATE product SET image_url = '/images/placeholder-medical.jpg' WHERE id = ?", (prod[0],))
            
        print("2. Merging Laryngoscope sizes (4/3/2, 00/0/1, 5/4/1)...")
        # Find the Cullinan Laryngoscopes
        cursor.execute("SELECT id, sku FROM product WHERE name LIKE 'Laryngoscope Avec Lames%'")
        laryngoscopes = cursor.fetchall()
        
        if laryngoscopes:
            # We will keep the first one as the parent, and update its name
            parent_id = laryngoscopes[0][0]
            
            # Update the parent product name to be generic
            cursor.execute("""
                UPDATE product 
                SET name = 'Laryngoscope Avec Lames – Cullinan (Multi-Tailles)',
                    description = 'Laryngoscope professionnel avec jeux de lames interchangeables. Disponible en tailles 4/3/2, 00/0/1, ou 5/4/1 selon les besoins cliniques.',
                    slug = 'laryngoscope-avec-lames-multi-tailles'
                WHERE id = ?
            """, (parent_id,))
            
            # Delete the other duplicate distinct products
            for prod in laryngoscopes[1:]:
                cursor.execute("DELETE FROM product WHERE id = ?", (prod[0],))
                
            print(f"Merged into single Laryngoscope product (ID: {parent_id})")

        print("3. Populating missing descriptions...")
        # Add a default description to any product that lacks one
        cursor.execute("""
            UPDATE product 
            SET description = 'Outil médical de haute qualité conçu pour un usage professionnel en clinique ou en milieu hospitalier. Certifié CE.' 
            WHERE description IS NULL OR description = ''
        """)
        
        conn.commit()
        print("Database cleanup successful.")
        
    except Exception as e:
        print(f"Error: {e}")
        conn.rollback()
    finally:
        conn.close()

if __name__ == "__main__":
    clean_database()
