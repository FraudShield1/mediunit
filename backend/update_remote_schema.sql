-- Update Remote D1 Schema for MediUnit
CREATE TABLE IF NOT EXISTS brand (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR UNIQUE NOT NULL,
    ce_certificate_url VARCHAR,
    logo_url VARCHAR,
    manufacturer VARCHAR,
    notes VARCHAR
);

-- Add missing columns to product table in D1
-- Note: Wrangler D1 supports ALTER TABLE ADD COLUMN
ALTER TABLE product ADD COLUMN brand_id INTEGER;
ALTER TABLE product ADD COLUMN packaging_type VARCHAR;
