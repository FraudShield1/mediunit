-- Fix 'car' image
UPDATE product SET image_url = '/images/placeholder-medical.jpg' WHERE image_url LIKE '%car%';

-- Merge Laryngoscopes
UPDATE product 
SET name = 'Laryngoscope Avec Lames – Cullinan (Multi-Tailles)',
    description = 'Laryngoscope professionnel avec jeux de lames interchangeables. Disponible en tailles 4/3/2, 00/0/1, ou 5/4/1 selon les besoins cliniques.',
    slug = 'laryngoscope-avec-lames-multi-tailles'
WHERE id = 60 OR sku = 'HUGVL4R432';

DELETE FROM product WHERE sku IN ('HUGVL4R0001', 'HUGVL4R541');

-- Populate missing descriptions
UPDATE product 
SET description = 'Outil médical de haute qualité conçu pour un usage professionnel en clinique ou en milieu hospitalier. Certifié CE.' 
WHERE description IS NULL OR description = '';
