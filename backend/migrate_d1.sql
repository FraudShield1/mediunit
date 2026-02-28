-- Add new columns to product table
ALTER TABLE product ADD COLUMN popularity INTEGER DEFAULT 0;
ALTER TABLE product ADD COLUMN brand TEXT;
ALTER TABLE product ADD COLUMN specifications TEXT;

-- Update some initial data for demonstration
UPDATE product SET brand = 'MediUnit Professional', specifications = 'Grade Médical, Certifié CE, Stérile.' WHERE brand IS NULL;
UPDATE product SET popularity = ABS(RANDOM() % 1000);
