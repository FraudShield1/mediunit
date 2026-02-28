from typing import List, Optional
from pydantic import BaseModel, Field
from decimal import Decimal

# Category Schemas
class CategoryBase(BaseModel):
    name: str
    slug: str
    parent_id: Optional[int] = None

class Category(CategoryBase):
    id: int

    class Config:
        from_attributes = True

# Brand Schemas
class Brand(BaseModel):
    id: int
    name: str
    ce_certificate_url: Optional[str] = None
    logo_url: Optional[str] = None
    manufacturer: Optional[str] = None
    notes: Optional[str] = None

    class Config:
        from_attributes = True

# Product Schemas
class VolumeDiscount(BaseModel):
    min_quantity: int
    discount_percentage: float

    class Config:
        from_attributes = True

class ProductBase(BaseModel):
    sku: str
    name: str
    slug: str
    description: str = Field(..., min_length=50)
    category_id: int
    brand_id: Optional[int] = None
    base_unit_price: Decimal
    stock_quantity: int
    ce_cert_url: Optional[str] = None
    tech_sheet_url: Optional[str] = None
    image_url: str
    packaging_type: str = "Unité"
    popularity: int = 0
    brand: Optional[str] = None # Legacy string
    specifications: Optional[str] = None

class Product(ProductBase):
    id: int
    discounts: List[VolumeDiscount] = []

    class Config:
        from_attributes = True

class ProductDetail(Product):
    category: Category
    brand_entity: Optional[Brand] = None
