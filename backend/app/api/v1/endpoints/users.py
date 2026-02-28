from fastapi import APIRouter, Depends, HTTPException, File, UploadFile
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.future import select

from app.api import deps
from app.db.session import get_db
from app.models.user import User, VerificationStatus
from app.schemas.user import User as UserSchema
from app.core.storage import storage
import uuid

router = APIRouter()

@router.get("/", response_model=List[UserSchema])
async def list_users_admin(
    db: AsyncSession = Depends(get_db),
    admin_user: User = Depends(deps.get_current_active_admin),
    skip: int = 0,
    limit: int = 100,
) -> Any:
    """
    Admin only: Get all users in the system.
    """
    result = await db.execute(
        select(User)
        .offset(skip).limit(limit)
        .order_by(User.created_at.desc())
    )
    return result.scalars().all()

@router.post("/verify-upload", response_model=UserSchema)
async def upload_verification_license(
    *,
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
    file: UploadFile = File(...)
) -> Any:
    """
    Upload medical license for verification.
    """
    if file.content_type not in ["application/pdf", "image/jpeg", "image/png"]:
        raise HTTPException(status_code=400, detail="Invalid file type. Only PDF and images are allowed.")
    
    file_content = await file.read()
    file_extension = file.filename.split(".")[-1]
    file_name = f"licenses/{current_user.id}_{uuid.uuid4()}.{file_extension}"
    
    public_url = await storage.upload_file(file_content, file_name, file.content_type)
    
    current_user.license_url = public_url
    current_user.verification_status = VerificationStatus.pending
    
    db.add(current_user)
    await db.commit()
    await db.refresh(current_user)
    return current_user

@router.patch("/{user_id}/verify", response_model=UserSchema)
async def verify_user_admin(
    *,
    db: AsyncSession = Depends(get_db),
    user_id: uuid.UUID,
    admin_user: User = Depends(deps.get_current_active_admin)
) -> Any:
    """
    Verify a medical professional (Admin only).
    """
    result = await db.execute(select(User).filter(User.id == user_id))
    user = result.scalar_one_or_none()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    
    user.verification_status = VerificationStatus.verified
    db.add(user)
    await db.commit()
    await db.refresh(user)
    return user
