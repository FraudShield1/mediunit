-- Step 1: Identify products in incorrect brand-based categories
-- 108 = Egemen, 109 = Pharmaplast, 110 = Greatcare

-- For Egemen (mostly Anesthesia/Spinal/Epidural needles), map to Anesthésie (103)
UPDATE product
SET category_id = 103
WHERE category_id = 108;

-- For Pharmaplast (mostly wound care, plasters), map to Consommables Essentiels (101)
UPDATE product
SET category_id = 101
WHERE category_id = 109;

-- For Greatcare (urine bags, speculums, general consumables), map to Consommables Essentiels (101)
UPDATE product
SET category_id = 101
WHERE category_id = 110;

-- Step 2: Delete the invalid brand categories
DELETE FROM category WHERE id IN (108, 109, 110);
