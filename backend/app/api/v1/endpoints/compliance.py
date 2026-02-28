import io
import zipfile
import uuid
from typing import Any
from fastapi import APIRouter, Depends, HTTPException, Response
from fastapi.responses import StreamingResponse
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.future import select
from sqlalchemy.orm import selectinload

from app.api import deps
from app.db.session import get_db
from app.models.user import User
from app.models.order import Order, OrderItem
from app.models.product import Product
from app.core.storage import storage
from app.core.config import settings

router = APIRouter()

@router.get("/pack/{order_id}")
async def get_compliance_pack(
    *,
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
    order_id: uuid.UUID
) -> Any:
    """
    Generate a ZIP archive containing all CE certificates and Technical Sheets 
    for all products in a specific order. This creates the "Dossier Réglementaire".
    """
    # Fetch order with items and products
    result = await db.execute(
        select(Order)
        .filter(Order.id == order_id)
        .options(selectinload(Order.items).selectinload(OrderItem.product))
    )
    db_order = result.scalars().first()
    
    if not db_order:
        raise HTTPException(status_code=404, detail="Order not found")
    
    # Security: Ensure ownership
    if db_order.user_id != current_user.id and current_user.role != "admin":
        raise HTTPException(status_code=403, detail="Not authorized to access this compliance pack")

    # Aggregate documents
    docs_to_download = []
    for item in db_order.items:
        product = item.product
        if not product:
            continue
            
        if product.ce_cert_url:
            docs_to_download.append({
                "url": product.ce_cert_url,
                "name": f"{product.name.replace(' ', '_')}_CE_Certificate.pdf"
            })
        if product.tech_sheet_url:
            docs_to_download.append({
                "url": product.tech_sheet_url,
                "name": f"{product.name.replace(' ', '_')}_Tech_Sheet.pdf"
            })

    if not docs_to_download:
        raise HTTPException(status_code=404, detail="No compliance documents found for this order")

    # Create ZIP in memory
    zip_buffer = io.BytesIO()
    with zipfile.ZipFile(zip_buffer, "w", zipfile.ZIP_DEFLATED) as zip_file:
        for doc in docs_to_download:
            # Extract key from URL if it's an R2 URL
            # Example: https://pub-xxx.r2.dev/certificates/xxx.pdf
            url = doc["url"]
            if settings.R2_PUBLIC_URL in url:
                key = url.replace(f"{settings.R2_PUBLIC_URL}/", "")
                try:
                    # Get object content directly from R2 via our storage client
                    # We need to access the s3_client which is internal to storage
                    response = storage.s3_client.get_object(Bucket=storage.bucket, Key=key)
                    file_content = response['Body'].read()
                    zip_file.writestr(doc["name"], file_content)
                except Exception as e:
                    print(f"Failed to download {key} from R2: {e}")
                    # Fallback or skip
                    continue
            else:
                # External URL: We could use httpx here but for now we only support R2 hosted docs
                # in this automated pack generation for speed and security.
                continue

    zip_buffer.seek(0)
    
    filename = f"Dossier_Reglementaire_MediUnit_CMD_{str(order_id)[:8].upper()}.zip"
    
    return StreamingResponse(
        zip_buffer,
        media_type="application/x-zip-compressed",
        headers={
            "Content-Disposition": f"attachment; filename={filename}"
        }
    )
