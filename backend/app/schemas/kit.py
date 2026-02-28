from typing import List, Optional
from pydantic import BaseModel
from app.schemas.product import Product

# Kit Schemas
class KitItemBase(BaseModel):
    product_id: int
    default_quantity: int

class KitItem(KitItemBase):
    product: Product

    class Config:
        from_attributes = True

class KitBase(BaseModel):
    name: str
    description: str
    slug: str

class Kit(KitBase):
    id: int
    items: List[KitItem]

    class Config:
        from_attributes = True
