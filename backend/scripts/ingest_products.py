import json
import asyncio
import os
from dotenv import load_dotenv
from pathlib import Path

# Load .env explicitly
env_path = Path(__file__).resolve().parent.parent.parent / ".env"
load_dotenv(dotenv_path=env_path)

from decimal import Decimal
from sqlalchemy.orm import selectinload
from sqlalchemy.future import select

from app.db.session import AsyncSessionLocal, async_engine
from app.models.product import Product, Category
from sqlmodel import SQLModel

# Relevant B2B consumable categories
ALLOWED_CATEGORIES = {
    "consommables", "desinfection", "soins", "bistouris", "habillement",
    "sutures", "injection", "anesthesie", "sterilisation", "petit-materiel"
}

async def ingest_data():
    async with async_engine.begin() as conn:
        await conn.run_sync(SQLModel.metadata.create_all)

    with open('/tmp/ultimed_export/ultimed_export_pack/products_data.json', 'r') as f:
        data = json.load(f)

    async with AsyncSessionLocal() as db:
        # Clear existing data to ensure a clean slate for production
        await db.execute(SQLModel.metadata.tables['volumediscount'].delete())
        await db.execute(SQLModel.metadata.tables['product'].delete())
        await db.execute(SQLModel.metadata.tables['category'].delete())
        await db.commit()

        # Get or create categories
        cat_map = {}
        
        products_added = 0
        for item in data:
            cat_name = item.get('category', 'unknown').lower()
            if cat_name not in ALLOWED_CATEGORIES:
                continue
            
            # Ensure category exists
            slug = cat_name.replace(' ', '-')
            if slug not in cat_map:
                new_cat = Category(name=cat_name.title(), slug=slug)
                db.add(new_cat)
                await db.commit()
                await db.refresh(new_cat)
                cat_map[slug] = new_cat.id
            
            cat_id = cat_map[slug]

            # Product fields
            sku = item.get('sku', f"UNK-{item.get('id', '0')}")
            
            # Check if SKU exists (should be empty now but good practice)
            res = await db.execute(select(Product).filter(Product.sku == sku))
            existing = res.scalars().first()
            if existing:
                continue

            name = item.get('nameFr') or item.get('nameEn') or item.get('name', 'Unknown Product')
            # Extract standard base price, fallback to 10.0
            price_val = 10.0
            slug_prod = sku.lower().replace('/', '-') + "-" + name.lower().replace(' ', '-').replace('/', '-')[:30]
            
            # Process image path
            raw_image = item.get('mediaUrl') or item.get('image', '')
            image_url = "/" + raw_image.lstrip('./') if raw_image else "/"

            new_prod = Product(
                sku=sku,
                name=name,
                slug=slug_prod,
                description=item.get('description', ''),
                category_id=cat_id,
                base_unit_price=Decimal(str(item.get('price', price_val))),
                stock_quantity=100, # Mock stock
                image_url=image_url
            )
            db.add(new_prod)
            products_added += 1

        await db.commit()
        print(f"Successfully ingested {products_added} products from allowed categories.")

if __name__ == "__main__":
    asyncio.run(ingest_data())
