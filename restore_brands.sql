-- 1. Repopulate Brands with Premium Clinical Data (Corrected Schema)
INSERT OR REPLACE INTO brand (id, name, manufacturer, logo_url, notes) VALUES 
(1, 'MediUnit Clinical', 'MediUnit Clinical S.A.R.L.', '/images/brands/mediunit.png', 'Product of Morocco'),
(2, 'B. Braun', 'B. Braun Melsungen AG', '/images/brands/bbraun.png', 'Product of Germany'),
(3, 'BD (Becton Dickinson)', 'Becton, Dickinson and Company', '/images/brands/bd.png', 'Product of USA'),
(4, 'Teleflex', 'Teleflex Incorporated', '/images/brands/teleflex.png', 'Product of Ireland'),
(5, 'Greatcare', 'Greatcare Medical', '/images/brands/greatcare.png', 'Product of China'),
(6, 'Pharmaplast', 'Pharmaplast S.A.E.', '/images/brands/pharmaplast.png', 'Product of Egypt'),
(7, 'Egemen', 'Egemen International', '/images/brands/egemen.png', 'Product of Turkey'),
(8, 'Coloplast', 'Coloplast A/S', '/images/brands/coloplast.png', 'Product of Denmark');

-- 2. Link Seringues to Premium Brands (BD/B.Braun/MediUnit)
UPDATE product SET brand_id = 3 WHERE slug LIKE 'seringue-luer-slip-3-pieces%';
UPDATE product SET brand_id = 3 WHERE slug LIKE 'seringue-a-insuline%';
UPDATE product SET brand_id = 3 WHERE slug LIKE 'seringue-luer-slip-seringue-en-3-parties%';

-- 3. Link Anesthesia to Premium Brands (Teleflex/B.Braun/Egemen)
UPDATE product SET brand_id = 7 WHERE slug LIKE 'aiguille-de-rachianesthesie%';
UPDATE product SET brand_id = 7 WHERE slug LIKE 'aiguille-de-ponction-lombaire%';
UPDATE product SET brand_id = 7 WHERE slug LIKE 'aiguille-spinale%';

-- 4. Link Urology to Coloplast
UPDATE product SET brand_id = 8 WHERE slug LIKE 'coloplast%';

-- 5. Fallback for others
UPDATE product SET brand_id = 1 WHERE brand_id IS NULL;

-- 6. Update the 'brand' text column (Corrected SQLite Syntax)
UPDATE product SET brand = (SELECT name FROM brand WHERE brand.id = product.brand_id);
