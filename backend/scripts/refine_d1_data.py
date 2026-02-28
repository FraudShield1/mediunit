import json
import re
import unicodedata

def slugify(text):
    if not text:
        return ""
    text = unicodedata.normalize('NFKD', text).encode('ascii', 'ignore').decode('ascii')
    text = re.sub(r'[^\w\s-]', '', text).strip().lower()
    return re.sub(r'[-\s]+', '-', text)

# Provided Brand Compliance Data
BRAND_CERTIFICATES = [
    {"brand": "ACUTE", "manufacturer": "Teleflex", "docLink": "https://www.teleflex.com/en/regulatory-affairs/index.html", "notes": "Arrow International MDR cert valid until Feb 2028."},
    {"brand": "Arrow", "manufacturer": "Teleflex", "docLink": "https://www.teleflex.com/en/regulatory-affairs/index.html", "notes": "MDR cert valid until Feb 2028."},
    {"brand": "COPPER Medical", "manufacturer": "Copper Medical Shenzhen", "docLink": "http://www.szcopper.com/", "notes": "CE/ISO 13485. Transitioning to MDR for 2026."},
    {"brand": "CULLINAN", "manufacturer": "Cullinan Medical (China)", "docLink": "https://www.zamar.care/", "notes": "Associated with Zamar/Cook. Transitioning to MDR."},
    {"brand": "Coloplast", "manufacturer": "Coloplast", "docLink": "https://www.coloplast.com/products/declarations-of-conformity/", "notes": "Search by Ref/UDI. MDR compliant."},
    {"brand": "Egemen", "manufacturer": "Egemen International", "docLink": "https://www.egemen.com.tr/en/quality-certificates", "notes": "In transition to MDR."},
    {"brand": "FITONE GROUP / Fitone", "manufacturer": "Fitone", "docLink": "https://mtender.gov.md/tenders/ocds-b3wdp1-MD-1629897000788/lots/1/lots-documents", "notes": "MDR (EU) 2017/745 Class I DoC for gloves.", "aliases": ["Fitone", "FITONE GROUP"]},
    {"brand": "GUILLIN", "manufacturer": "Groupe Guillin", "docLink": "https://www.groupeguillin.fr/en/", "notes": "ISO 9001/BRC. Packaging for sterilized devices."},
    {"brand": "Greatcare", "manufacturer": "Greatcare Medical", "docLink": "http://www.greatcaretube.com/about-certification.html", "notes": "CE/ISO 13485. Transitioning to MDR."},
    {"brand": "MEDPLUS", "manufacturer": "Jiangsu Medplus", "docLink": "http://www.medplus-js.com/", "notes": "CE (MDD) and ISO 13485. Transitioning to MDR."},
    {"brand": "NEOMEDIC", "manufacturer": "Neomedic Ltd", "docLink": "https://neomedic.ae/quality-certificates/", "notes": "CE / ISO 13485 (UK MHRA registered)."},
    {"brand": "NEOPLAST / Pharmaplast", "manufacturer": "Pharmaplast S.A.E.", "docLink": "https://www.pharmaplast-online.com/", "notes": "MDR compliant (EU 2017/745) since 2021.", "aliases": ["NEOPLAST", "Pharmaplast"]},
    {"brand": "OTU", "manufacturer": "OTU Medical", "docLink": "https://www.otumed.com/news/", "notes": "FDA cleared. Transitioning to MDR for 2026 EUDAMED."},
    {"brand": "PARAMOUNT", "manufacturer": "Paramount Surgimed Ltd", "docLink": "http://www.paramountsurgimed.com/quality.html", "notes": "MDR QMS Cert valid through Sep 2025."},
    {"brand": "POLY-MEDICURE / POLYMED", "manufacturer": "Poly Medicure Ltd", "docLink": "https://www.indiapharmaoutlook.com/news/poly-medicure-gets-eu-mdr-validation-for-54-products-nwid-2679.html", "notes": "54 products MDR validated in 2025.", "aliases": ["POLY-MEDICURE", "POLYMED"]},
    {"brand": "RUSCH AR / UROLOGIE", "manufacturer": "Teleflex", "docLink": "https://www.teleflex.com/en/regulatory-affairs/index.html", "notes": "Teleflex is transitioning all legacy brands to MDR.", "aliases": ["RUSCH AR", "RUSCH UROLOGIE"]},
    {"brand": "SWAN MORTON", "manufacturer": "Swann-Morton", "docLink": "https://www.swann-morton.com/", "notes": "MDR compliant (BSI 2797)."},
    {"brand": "Sritrang", "manufacturer": "Sri Trang Gloves", "docLink": "https://www.sritranggloves.com/en/product-certificate", "notes": "MDR (EU) 2017/745 Class I & Is (Sterile). ISO 13485 valid to July 2026."},
    {"brand": "TUOREN", "manufacturer": "Tuoren Group", "docLink": "http://www.tuoren.com/en/", "notes": "MDR valid to July 2028 via Allmed."},
    {"brand": "ZAMA (Zamar)", "manufacturer": "Zamar Medical", "docLink": "https://www.zamar.care/certificates.html", "notes": "CE, ISO 9001/13485 available on site.", "aliases": ["ZAMA", "Zamar"]}
]

# Mapping table for merging
BRAND_MAPPING = {}
for entry in BRAND_CERTIFICATES:
    target_name = entry["brand"]
    BRAND_MAPPING[target_name] = target_name
    if "aliases" in entry:
        for alias in entry["aliases"]:
            BRAND_MAPPING[alias] = target_name

def generate_sql(json_path, output_sql_path):
    with open(json_path, 'r', encoding='utf-8') as f:
        products = json.load(f)

    sql_commands = []
    
    # 1. Ensure Brand Table and Brands with detailed info
    for entry in BRAND_CERTIFICATES:
        name = entry["brand"].replace("'", "''")
        manufacturer = entry["manufacturer"].replace("'", "''")
        doc_url = entry["docLink"].replace("'", "''")
        notes = entry["notes"].replace("'", "''")
        
        sql_commands.append(f"""
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('{name}', '{manufacturer}', '{doc_url}', '{notes}')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
""".strip())

    # 2. Process Products
    for p in products:
        sku = p.get('sku')
        name_fr = p.get('nameFr', '')
        slug = slugify(name_fr)
        raw_brand = p.get('brand', '')
        
        # Merge brand name
        brand_name = BRAND_MAPPING.get(raw_brand, raw_brand)
        
        category_slug = p.get('category', '')
        
        # Escape single quotes
        safe_sku = sku.replace("'", "''") if sku else ""
        safe_name = name_fr.replace("'", "''")
        safe_slug = slug.replace("'", "''")
        safe_brand_name = brand_name.replace("'", "''")
        safe_category_slug = category_slug.replace("'", "''")
        
        # Specs as JSON string
        specs = json.dumps(p.get('specs', {}), ensure_ascii=False).replace("'", "''")

        update_cmd = f"""
UPDATE product 
SET 
    name = '{safe_name}', 
    slug = '{safe_slug}', 
    specifications = '{specs}',
    brand_id = (SELECT id FROM brand WHERE name = '{safe_brand_name}'),
    category_id = (SELECT id FROM category WHERE slug = '{safe_category_slug}')
WHERE sku = '{safe_sku}';
"""
        sql_commands.append(update_cmd.strip())

    with open(output_sql_path, 'w', encoding='utf-8') as f:
        f.write("\n".join(sql_commands))
    
    print(f"Generated {len(sql_commands)} SQL commands in {output_sql_path}")

if __name__ == "__main__":
    generate_sql('products_data.json', 'backend/refine_products.sql')
