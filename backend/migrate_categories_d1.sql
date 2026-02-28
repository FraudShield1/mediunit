-- Add parent_id to category
ALTER TABLE category ADD COLUMN parent_id INTEGER REFERENCES category(id);

-- Professional Taxonomy Seed (D1 Remote)
-- Pillars
INSERT OR IGNORE INTO category (name, slug) VALUES ('Protection & Hygiène', 'protection-hygiene');
INSERT OR IGNORE INTO category (name, slug) VALUES ('Injection & Prélèvement', 'injection-prelevement');
INSERT OR IGNORE INTO category (name, slug) VALUES ('Gynécologie & Imagerie', 'gynecologie-imagerie');
INSERT OR IGNORE INTO category (name, slug) VALUES ('Désinfection & Stérilisation', 'desinfection-sterilisation');
INSERT OR IGNORE INTO category (name, slug) VALUES ('Instrumentation à Usage Unique', 'instrumentation-usage-unique');
INSERT OR IGNORE INTO category (name, slug) VALUES ('Consommables Dentaires', 'consommables-dentaires');

-- Get IDs and map children (Simplified for SQL script, ideally done via logic or specific IDs)
-- This is just for demonstration, real seeding often uses a script like above but for remote D1
