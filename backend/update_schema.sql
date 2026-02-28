-- Update Schema for MediUnit Local SQLite
CREATE TABLE IF NOT EXISTS brand (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR UNIQUE NOT NULL,
    ce_certificate_url VARCHAR,
    logo_url VARCHAR,
    manufacturer VARCHAR,
    notes VARCHAR
);

-- Add missing columns to product table
-- SQLite doesn't support adding multiple columns in one ALTER TABLE, or adding FK constraints easily after creation.
-- But we can add them one by one.
ALTER TABLE product ADD COLUMN brand_id INTEGER REFERENCES brand(id);
ALTER TABLE product ADD COLUMN brand VARCHAR;
ALTER TABLE product ADD COLUMN specifications VARCHAR;
ALTER TABLE product ADD COLUMN packaging_type VARCHAR;
