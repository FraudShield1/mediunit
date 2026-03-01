from datetime import datetime
from typing import List, Optional
import uuid
from pydantic import BaseModel
from decimal import Decimal
from app.models.order import OrderStatus

# Order Item Schemas
class OrderItemBase(BaseModel):
    product_id: int
    quantity: int

class OrderItemCreate(OrderItemBase):
    pass

class OrderItem(OrderItemBase):
    id: int
    price_per_unit_at_purchase: Decimal

    class Config:
        from_attributes = True

# Order Schemas
class OrderCreateAddress(BaseModel):
    first_name: str
    last_name: str
    phone: str
    address: str
    city: str
    clinic_name: Optional[str] = None

class OrderBase(BaseModel):
    pass

class OrderCreate(OrderBase):
    items: List[OrderItemCreate]
    shipping_details: Optional[OrderCreateAddress] = None
    shipping_address_id: Optional[int] = None
    id: uuid.UUID
    user_id: uuid.UUID
    total_amount: Decimal
    status: OrderStatus
    created_at: datetime
    items: List[OrderItem]

    class Config:
        from_attributes = True
