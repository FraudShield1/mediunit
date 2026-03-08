-- Migration: migration_v2.sql
-- Description: Add name_en and description_en to product table for i18n support.

-- Check if columns exist before adding (D1/SQLite style)
-- Note: 'ALTER TABLE ADD COLUMN' is safe in SQLite if executed once.
ALTER TABLE product ADD COLUMN name_en TEXT;
ALTER TABLE product ADD COLUMN description_en TEXT;
