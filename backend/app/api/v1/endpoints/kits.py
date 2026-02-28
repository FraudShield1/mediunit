from typing import Any, List
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.future import select
from sqlalchemy.orm import selectinload

from app.db.session import get_db
from app.models.order import Kit, KitItem
from app.schemas.kit import Kit as KitSchema

router = APIRouter()

@router.get("/", response_model=List[KitSchema])
async def list_kits(
    db: AsyncSession = Depends(get_db)
) -> Any:
    """
    Get all clinical kits.
    """
    result = await db.execute(
        select(Kit).options(
            selectinload(Kit.items).selectinload(KitItem.product)
        )
    )
    return result.scalars().all()

@router.get("/{slug}", response_model=KitSchema)
async def get_kit(
    *,
    db: AsyncSession = Depends(get_db),
    slug: str
) -> Any:
    """
    Get kit details.
    """
    result = await db.execute(
        select(Kit)
        .filter(Kit.slug == slug)
        .options(selectinload(Kit.items).selectinload(KitItem.product))
    )
    kit = result.scalars().first()
    if not kit:
        raise HTTPException(status_code=404, detail="Kit not found")
    return kit
