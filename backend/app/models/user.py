import uuid
from datetime import datetime
from typing import List, Optional
from sqlalchemy import Column, String, Enum as SAEnum
from sqlmodel import Field, Relationship, SQLModel
import enum

class VerificationStatus(str, enum.Enum):
    unverified = "unverified"
    pending = "pending"
    verified = "verified"

class UserRole(str, enum.Enum):
    admin = "admin"
    doctor = "doctor"

class UserBase(SQLModel):
    email: str = Field(unique=True, index=True)
    phone_number: str = Field(unique=True, index=True)
    clinic_name: str
    inpe_number: Optional[str] = None
    license_url: Optional[str] = None
    verification_status: VerificationStatus = Field(
        default=VerificationStatus.unverified,
        sa_column=Column(SAEnum(VerificationStatus))
    )
    role: UserRole = Field(
        default=UserRole.doctor,
        sa_column=Column(SAEnum(UserRole))
    )

class User(UserBase, table=True):
    id: uuid.UUID = Field(default_factory=uuid.uuid4, primary_key=True)
    hashed_password: str
    created_at: datetime = Field(default_factory=datetime.utcnow)
    
    addresses: List["Address"] = Relationship(back_populates="user")
    orders: List["Order"] = Relationship(back_populates="user")

class AddressBase(SQLModel):
    street_address: str
    city: str = "Casablanca"
    zip_code: str
    is_primary: bool = False

class Address(AddressBase, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    user_id: uuid.UUID = Field(foreign_key="user.id")
    
    user: User = Relationship(back_populates="addresses")
