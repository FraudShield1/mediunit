from typing import Any, List
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.future import select
from sqlalchemy import func
from sqlalchemy.orm import selectinload

from app.api import deps
from app.db.session import get_db
from app.models.user import User
from app.models.order import Order, OrderItem
from app.models.product import Product
from app.schemas.dashboard import DashboardData, SpendingAnalytics, ComplianceDocument
from app.schemas.order import OrderItemBase
from app.core.storage import storage
from decimal import Decimal

router = APIRouter()

@router.get("/", response_model=DashboardData)
async def get_dashboard_summary(
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
) -> Any:
    """
    Get consolidated dashboard data: recent orders and spending analytics.
    """
    # Recent Orders
    order_result = await db.execute(
        select(Order)
        .filter(Order.user_id == current_user.id)
        .options(selectinload(Order.items))
        .order_by(Order.created_at.desc())
        .limit(5)
    )
    recent_orders = order_result.scalars().all()
    
    # Analytics
    total_spent_result = await db.execute(
        select(func.sum(Order.total_amount))
        .filter(Order.user_id == current_user.id)
    )
    total_spent = total_spent_result.scalar() or Decimal("0.00")
    
    order_count_result = await db.execute(
        select(func.count(Order.id))
        .filter(Order.user_id == current_user.id)
    )
    order_count = order_count_result.scalar() or 0
    
    last_order_date = recent_orders[0].created_at if recent_orders else None
    
    return {
        "recent_orders": recent_orders,
        "analytics": {
            "total_spent": total_spent,
            "order_count": order_count,
            "last_order_date": last_order_date
        }
    }

@router.get("/compliance", response_model=List[ComplianceDocument])
async def get_compliance_vault(
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
) -> Any:
    """
    Get all compliance documents (CE Certs, Tech Sheets) for products previously ordered by the user.
    """
    # Find all products ordered by the user
    query = (
        select(Product)
        .join(OrderItem)
        .join(Order)
        .filter(Order.user_id == current_user.id)
        .distinct()
    )
    result = await db.execute(query)
    products = result.scalars().all()
    
    documents = []
    for product in products:
        if product.ce_cert_url:
            documents.append(
                ComplianceDocument(
                    name=f"CE Certificate - {product.name}",
                    type="CE Certificate",
                    download_url=product.ce_cert_url
                )
            )
        if product.tech_sheet_url:
            documents.append(
                ComplianceDocument(
                    name=f"Technical Sheet - {product.name}",
                    type="Technical Sheet",
                    download_url=product.tech_sheet_url
                )
            )
            
    return documents

@router.post("/reorder-last", response_model=List[OrderItemBase])
async def reorder_last_order(
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
) -> Any:
    """
    Get items from the last order for one-click reorder.
    """
    order_result = await db.execute(
        select(Order)
        .filter(Order.user_id == current_user.id)
        .order_by(Order.created_at.desc())
        .limit(1)
    )
    last_order = order_result.scalars().first()
    if not last_order:
        raise HTTPException(status_code=404, detail="No previous orders found")
    
    # Refresh items
    result = await db.execute(
        select(OrderItem).filter(OrderItem.order_id == last_order.id)
    )
    return result.scalars().all()
