from typing import List, Optional
from sqlmodel import Field, Relationship, SQLModel
from decimal import Decimal

class CategoryBase(SQLModel):
    name: str
    slug: str = Field(unique=True, index=True)
    parent_id: Optional[int] = Field(default=None, foreign_key="category.id")

class Category(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    name: str = Field(index=True)
    slug: str = Field(unique=True, index=True)
    parent_id: Optional[int] = Field(default=None, foreign_key="category.id")
    
    products: List["Product"] = Relationship(back_populates="category")

class Brand(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    name: str = Field(unique=True, index=True, nullable=False)
    ce_certificate_url: Optional[str] = None
    logo_url: Optional[str] = None
    manufacturer: Optional[str] = None
    notes: Optional[str] = None
    
    products: List["Product"] = Relationship(back_populates="brand_entity")

class ProductBase(SQLModel):
    sku: str = Field(unique=True, index=True, nullable=False)
    name: str = Field(index=True, nullable=False)
    slug: str = Field(unique=True, index=True, nullable=False)
    description: str = Field(nullable=False)
    category_id: int = Field(foreign_key="category.id", nullable=False)
    brand_id: Optional[int] = Field(default=None, foreign_key="brand.id")
    base_unit_price: Decimal = Field(max_digits=10, decimal_places=2, nullable=False)
    stock_quantity: int = Field(default=0, nullable=False)
    ce_cert_url: Optional[str] = None
    tech_sheet_url: Optional[str] = None
    image_url: str = Field(nullable=False)
    packaging_type: str = Field(nullable=False) # e.g., "Boîte de 100", "Unité"
    popularity: int = Field(default=0)
    brand: Optional[str] = Field(default=None, nullable=True) # Legacy string brand
    specifications: Optional[str] = Field(default=None, nullable=True) # JSON or clinical text

class Product(ProductBase, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    
    category: Category = Relationship(back_populates="products")
    brand_entity: Optional[Brand] = Relationship(back_populates="products")
    discounts: List["VolumeDiscount"] = Relationship(back_populates="product")

class VolumeDiscount(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    product_id: int = Field(foreign_key="product.id")
    min_quantity: int
    discount_percentage: float # e.g., 0.10 for 10%
    
    product: Product = Relationship(back_populates="discounts")
