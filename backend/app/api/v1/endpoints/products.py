from typing import Any, List, Optional
from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.future import select
from sqlalchemy.orm import selectinload, joinedload

from app.db.session import get_db
from app.models.product import Product, Category
from app.schemas.product import Product as ProductSchema, ProductDetail, Category as CategorySchema
from app.core.cache import cache
from fastapi.responses import Response
from fpdf import FPDF
import io

router = APIRouter()

CORPORATE_ADDRESS_LISBON = """
MediUnit International Ltd.
Avenida da Liberdade, 110
1269-046 Lisboa, Portugal
Official Regulatory Representative
"""

@router.get("/categories", response_model=List[CategorySchema])
async def list_categories(
    db: AsyncSession = Depends(get_db)
) -> Any:
    """
    Get category tree.
    """
    result = await db.execute(select(Category))
    return result.scalars().all()

@router.get("/products", response_model=List[ProductSchema])
async def list_products(
    *,
    db: AsyncSession = Depends(get_db),
    category_slug: Optional[str] = None,
    search: Optional[str] = None,
    skip: int = 0,
    limit: int = 100,
    sort_by: Optional[str] = "popularity",
) -> Any:
    """
    Get paginated products. Cached in Redis.
    """
    cache_key = f"products:{category_slug}:{search}:{skip}:{limit}:{sort_by}"
    cached_data = await cache.get(cache_key)
    if cached_data:
        return cached_data

    query = select(Product).options(
        selectinload(Product.discounts),
        joinedload(Product.category)
    )
    
    if category_slug:
        query = query.join(Category).filter(Category.slug == category_slug)
        
    if search:
        query = query.filter(Product.name.ilike(f"%{search}%"))
        
    if sort_by == "popularity":
        query = query.order_by(Product.popularity.desc())
        
    query = query.offset(skip).limit(limit)
    result = await db.execute(query)
    products = result.scalars().all()
    
    # Store in cache
    await cache.set(cache_key, [p.dict() for p in products])
    
    return products

@router.get("/audit/orphans", response_model=List[ProductSchema])
async def list_orphan_products(
    db: AsyncSession = Depends(get_db)
) -> Any:
    """
    Audit: Get products that are not linked to a valid category.
    """
    result = await db.execute(
        select(Product)
        .outerjoin(Category)
        .filter(Category.id == None)
        .options(selectinload(Product.discounts))
    )
    return result.scalars().all()

@router.get("/{slug}", response_model=ProductDetail)
async def get_product(
    *,
    db: AsyncSession = Depends(get_db),
    slug: str
) -> Any:
    """
    Get product details with dynamic compliance resolution.
    """
    result = await db.execute(
        select(Product)
        .filter(Product.slug == slug)
        .options(
            selectinload(Product.discounts),
            selectinload(Product.category),
            selectinload(Product.brand_entity)
        )
    )
    product = result.scalars().first()
    if not product:
        raise HTTPException(status_code=404, detail="Product not found")
    
    # Dynamic CE Resolution: Fallback to brand if product cert is missing
    if not product.ce_cert_url and product.brand_entity:
        product.ce_cert_url = product.brand_entity.ce_certificate_url
        
@router.get("/{slug}/spec-pdf")
async def get_product_spec_pdf(
    *,
    db: AsyncSession = Depends(get_db),
    slug: str
) -> Any:
    """
    Generate a dynamic technical data sheet (Fiche Technique) in PDF.
    """
    result = await db.execute(
        select(Product)
        .filter(Product.slug == slug)
        .options(selectinload(Product.brand_entity), selectinload(Product.category))
    )
    product = result.scalars().first()
    if not product:
        raise HTTPException(status_code=404, detail="Product not found")

    pdf = FPDF()
    pdf.add_page()
    
    # Branded Header
    pdf.set_font("helvetica", "B", 16)
    pdf.set_text_color(0, 51, 102) # Medical Blue
    pdf.cell(0, 10, "MediUnit Professional - Fiche Technique", ln=True, align="C")
    
    pdf.set_font("helvetica", "I", 8)
    pdf.set_text_color(100, 100, 100)
    for line in CORPORATE_ADDRESS_LISBON.strip().split("\n"):
        pdf.cell(0, 4, line, ln=True, align="R")
    
    pdf.ln(10)
    pdf.set_draw_color(0, 51, 102)
    pdf.line(10, pdf.get_y(), 200, pdf.get_y())
    pdf.ln(5)
    
    # Product Basics
    pdf.set_font("helvetica", "B", 14)
    pdf.set_text_color(0, 0, 0)
    pdf.cell(0, 10, product.name, ln=True)
    
    pdf.set_font("helvetica", "B", 10)
    pdf.cell(40, 7, "SKU:", 0)
    pdf.set_font("helvetica", "", 10)
    pdf.cell(0, 7, product.sku, ln=True)
    
    pdf.set_font("helvetica", "B", 10)
    pdf.cell(40, 7, "Catégorie:", 0)
    pdf.set_font("helvetica", "", 10)
    pdf.cell(0, 7, product.category.name if product.category else "N/A", ln=True)

    pdf.set_font("helvetica", "B", 10)
    pdf.cell(40, 7, "Marque:", 0)
    pdf.set_font("helvetica", "", 10)
    brand_name = product.brand_entity.name if product.brand_entity else (product.brand or "MediUnit Standard")
    pdf.cell(0, 7, brand_name, ln=True)
    
    pdf.ln(5)
    
    # Specifications Table
    pdf.set_font("helvetica", "B", 12)
    pdf.set_fill_color(240, 240, 240)
    pdf.cell(0, 10, "Spécifications Cliniques", ln=True, fill=True)
    pdf.ln(2)
    
    pdf.set_font("helvetica", "", 9)
    if product.specifications:
        pdf.multi_cell(0, 5, product.specifications)
    else:
        # Simple HTML strip for clean output
        import re
        clean_desc = re.sub('<[^<]+?>', '', product.description)
        pdf.multi_cell(0, 5, clean_desc)

    # Footer
    pdf.set_y(-30)
    pdf.set_font("helvetica", "I", 8)
    pdf.set_text_color(150, 150, 150)
    pdf.cell(0, 10, "MediUnit B2B - Document généré dynamiquement. Conformité CE certifiée par le fabricant.", align="C")

    pdf_bytes = pdf.output()
    return Response(
        content=pdf_bytes,
        media_type="application/pdf",
        headers={
            "Content-Disposition": f"attachment; filename=Fiche_Technique_{product.sku}.pdf"
        }
    )
