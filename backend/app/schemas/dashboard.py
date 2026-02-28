from typing import List, Optional
from pydantic import BaseModel
from decimal import Decimal
from datetime import datetime
from app.schemas.order import Order

class SpendingAnalytics(BaseModel):
    total_spent: Decimal
    order_count: int
    last_order_date: Optional[datetime] = None

class DashboardData(BaseModel):
    recent_orders: List[Order]
    analytics: SpendingAnalytics

class ComplianceDocument(BaseModel):
    name: str
    type: str # 'CE Certificate', 'Technical Sheet', etc.
    download_url: str
    expiry_date: Optional[datetime] = None
