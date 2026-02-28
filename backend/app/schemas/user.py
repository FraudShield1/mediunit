import uuid
from datetime import datetime
from typing import Optional
from pydantic import BaseModel, EmailStr
from app.models.user import VerificationStatus, UserRole

# Shared properties
class UserBase(BaseModel):
    email: EmailStr
    phone_number: str
    clinic_name: str
    inpe_number: Optional[str] = None
    license_url: Optional[str] = None

# Properties to receive via API on creation
class UserCreate(UserBase):
    password: str

# Properties to receive via API on update
class UserUpdate(UserBase):
    password: Optional[str] = None

class UserInDBBase(UserBase):
    id: uuid.UUID
    verification_status: VerificationStatus
    license_url: Optional[str] = None
    role: UserRole
    created_at: datetime

    class Config:
        from_attributes = True

# Additional properties to return via API
class User(UserInDBBase):
    pass

class Token(BaseModel):
    access_token: str
    token_type: str

class TokenPayload(BaseModel):
    sub: Optional[str] = None
