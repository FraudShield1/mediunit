from decimal import Decimal
import uuid
from datetime import datetime
from typing import List, Optional
from sqlalchemy import Column, String, Enum as SAEnum
from sqlmodel import Field, Relationship, SQLModel
import enum

class OrderStatus(str, enum.Enum):
    pending = "pending"
    processing = "processing"
    shipped = "shipped"
    delivered = "delivered"
    cancelled = "cancelled"

class OrderBase(SQLModel):
    user_id: uuid.UUID = Field(foreign_key="user.id")
    total_amount: Decimal = Field(default=0.0, max_digits=10, decimal_places=2)
    status: OrderStatus = Field(
        default=OrderStatus.pending,
        sa_column=Column(SAEnum(OrderStatus))
    )
    shipping_address_id: int = Field(foreign_key="address.id")

class Order(OrderBase, table=True):
    id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True)
    created_at: datetime = Field(default_factory=datetime.utcnow)
    
    user: "User" = Relationship(back_populates="orders")
    items: List["OrderItem"] = Relationship(back_populates="order")

class OrderItem(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    order_id: uuid.UUID = Field(foreign_key="order.id")
    product_id: int = Field(foreign_key="product.id")
    quantity: int
    price_per_unit_at_purchase: Decimal = Field(default=0.0, max_digits=10, decimal_places=2)
    
    order: Order = Relationship(back_populates="items")
    product: "Product" = Relationship()

# Kits / Bundles
class KitBase(SQLModel):
    name: str
    description: str
    slug: str = Field(unique=True, index=True)

class Kit(KitBase, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    items: List["KitItem"] = Relationship(back_populates="kit")

class KitItem(SQLModel, table=True):
    kit_id: int = Field(foreign_key="kit.id", primary_key=True)
    product_id: int = Field(foreign_key="product.id", primary_key=True)
    default_quantity: int
    
    kit: Kit = Relationship(back_populates="items")
