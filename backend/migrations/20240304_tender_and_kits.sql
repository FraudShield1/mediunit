-- Migration: 20240304_tender_and_kits.sql
-- Description: Add Kits and Tender management tables to D1

-- 1. Kits System
CREATE TABLE IF NOT EXISTS kit (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    slug TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS kit_item (
    kit_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    default_quantity INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY (kit_id, product_id),
    FOREIGN KEY (kit_id) REFERENCES kit(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- 2. Tender Management (Marches Publics)
CREATE TABLE IF NOT EXISTS tender_proposals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tender_number TEXT UNIQUE NOT NULL,
    title TEXT NOT NULL,
    facility_id INTEGER, -- Link to hospital/clinic if applicable
    status TEXT DEFAULT 'draft', -- draft, submitted, won, lost
    submission_deadline TIMESTAMP,
    estimated_value DECIMAL(12, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS tender_analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tender_id INTEGER NOT NULL,
    raw_content TEXT,
    clinical_relevance_score INTEGER,
    financial_feasibility_score INTEGER,
    recommended_kit_id INTEGER,
    notes TEXT,
    FOREIGN KEY (tender_id) REFERENCES tender_proposals(id),
    FOREIGN KEY (recommended_kit_id) REFERENCES kit(id)
);

-- 3. Schema Alignment
-- Note: SQLite doesn't support easy RENAME COLUMN without table recreation in some versions.
-- We'll add stock_quantity if it doesn't exist, and eventually migrate data.
ALTER TABLE product ADD COLUMN stock_quantity INTEGER DEFAULT 0;
UPDATE product SET stock_quantity = stock WHERE stock_quantity = 0 AND stock IS NOT NULL;
