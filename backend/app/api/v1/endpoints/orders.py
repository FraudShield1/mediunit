import uuid
from typing import Any, List, Dict
from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.future import select
from sqlalchemy.orm import selectinload

from app.api import deps
from app.db.session import get_db
from app.models.user import User
from app.models.product import Product, VolumeDiscount
from app.schemas.order import Order as OrderSchema, OrderCreate
from decimal import Decimal
from fastapi.responses import Response
from fpdf import FPDF
import io

router = APIRouter()

@router.post("/", response_model=OrderSchema)
async def create_order(
    *,
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
    order_in: OrderCreate
) -> Any:
    """
    Create a new order. Includes volume discount calculation and stock validation.
    """
    total_amount = Decimal("0.00")
    order_items = []
    
    # Handle dynamic address creation from Checkout flow
    shipping_address_id = order_in.shipping_address_id
    if order_in.shipping_details:
        from app.models.user import Address
        new_address = Address(
            street_address=order_in.shipping_details.address,
            city=order_in.shipping_details.city,
            zip_code=order_in.shipping_details.zip_code,
            is_primary=False,
            user_id=current_user.id
        )
        db.add(new_address)
        await db.flush() # Get the new ID
        shipping_address_id = new_address.id

    if not shipping_address_id:
        raise HTTPException(status_code=400, detail="A shipping address or details must be provided.")
        
    # Fetch all products at once to prevent N+1
    product_ids = [item_in.product_id for item_in in order_in.items]
    product_result = await db.execute(
        select(Product)
        .filter(Product.id.in_(product_ids))
        .options(selectinload(Product.discounts))
    )
    products_map: Dict[uuid.UUID, Product] = {p.id: p for p in product_result.scalars().all()}

    for item_in in order_in.items:
        product = products_map.get(item_in.product_id)
        if not product:
            raise HTTPException(status_code=404, detail=f"Product {item_in.product_id} not found")
        
        if product.stock_quantity < item_in.quantity:
            raise HTTPException(
                status_code=400, 
                detail=f"Insufficient stock for product {product.name}"
            )
        
        # Calculate price with volume discounts
        unit_price = product.base_unit_price
        best_discount = 0.0
        
        # Check database discounts
        for discount in product.discounts:
            if item_in.quantity >= discount.min_quantity:
                best_discount = max(best_discount, discount.discount_percentage)
        
        # Fallback to PRD Standard if no DB discounts defined
        if not product.discounts:
            if item_in.quantity >= 50:
                best_discount = 0.20
            elif item_in.quantity >= 10:
                best_discount = 0.10
        
        final_unit_price = unit_price * Decimal(str(1 - best_discount))
        item_total = final_unit_price * item_in.quantity
        total_amount += item_total
        
        # Deduct stock
        product.stock_quantity -= item_in.quantity
        
        from app.models.order import OrderItem
        order_items.append(
            OrderItem(
                product_id=product.id,
                quantity=item_in.quantity,
                price_per_unit_at_purchase=final_unit_price
            )
        )
    
    from app.models.order import Order, OrderStatus
    db_order = Order(
        user_id=current_user.id,
        shipping_address_id=shipping_address_id,
        total_amount=total_amount,
        status=OrderStatus.pending,
        items=order_items
    )
    
    db.add(db_order)
    await db.commit()
    await db.refresh(db_order)
    return db_order

@router.get("/", response_model=List[OrderSchema])
async def list_orders(
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
    skip: int = 0,
    limit: int = 100,
) -> Any:
    """
    Get current user's orders.
    """
    result = await db.execute(
        select(Order)
        .filter(Order.user_id == current_user.id)
        .options(selectinload(Order.items))
        .offset(skip).limit(limit)
    )
    return result.scalars().all()

@router.get("/admin/all", response_model=List[OrderSchema])
async def list_all_orders_admin(
    db: AsyncSession = Depends(get_db),
    admin_user: User = Depends(deps.get_current_active_admin),
    skip: int = 0,
    limit: int = 100,
) -> Any:
    """
    Admin only: Get all orders in the system.
    """
    result = await db.execute(
        select(Order)
        .options(selectinload(Order.items))
        .offset(skip).limit(limit)
        .order_by(Order.created_at.desc())
    )
    return result.scalars().all()

@router.patch("/{order_id}/status", response_model=OrderSchema)
async def update_order_status(
    *,
    db: AsyncSession = Depends(get_db),
    admin_user: User = Depends(deps.get_current_active_admin),
    order_id: uuid.UUID,
    status: OrderStatus
) -> Any:
    """
    Admin only: Update order status.
    """
    result = await db.execute(select(Order).filter(Order.id == order_id))
    db_order = result.scalars().first()
    if not db_order:
        raise HTTPException(status_code=404, detail="Order not found")
    
    db_order.status = status
    await db.commit()
    await db.refresh(db_order)
    return db_order

@router.get("/{order_id}/invoice")
async def get_order_invoice(
    *,
    db: AsyncSession = Depends(get_db),
    current_user: User = Depends(deps.get_current_user),
    order_id: uuid.UUID
) -> Any:
    """
    Generate a PDF invoice for an order.
    """
    result = await db.execute(
        select(Order)
        .filter(Order.id == order_id)
        .options(selectinload(Order.items).selectinload(OrderItem.product))
    )
    db_order = result.scalars().first()
    
    if not db_order:
        raise HTTPException(status_code=404, detail="Order not found")
    
    # Check ownership
    if db_order.user_id != current_user.id:
         # Check if admin
         if current_user.role != "admin": # Simple check
             raise HTTPException(status_code=403, detail="Not authorized")

    # PDF Generation
    pdf = FPDF()
    pdf.add_page()
    pdf.set_font("Arial", "B", 16)
    
    # Header
    pdf.cell(200, 10, txt="MediUnit - Facture Pro", ln=True, align='C')
    pdf.set_font("Arial", "", 10)
    pdf.cell(200, 10, txt="Fournisseur de Dispositifs Médicaux - Casablanca, Maroc", ln=True, align='C')
    pdf.ln(10)
    
    # Order Info
    pdf.set_font("Arial", "B", 12)
    pdf.cell(100, 10, txt=f"Facture N°: {str(db_order.id)[:8]}")
    pdf.set_font("Arial", "", 12)
    pdf.cell(100, 10, txt=f"Date: {db_order.created_at.strftime('%d/%m/%Y')}", ln=True, align='R')
    pdf.ln(5)
    
    # Table Header
    pdf.set_font("Arial", "B", 10)
    pdf.cell(80, 10, "Article", border=1)
    pdf.cell(30, 10, "PU (MAD)", border=1, align='C')
    pdf.cell(30, 10, "Qté", border=1, align='C')
    pdf.cell(40, 10, "Sous-total", border=1, align='C')
    pdf.ln()
    
    # Items
    pdf.set_font("Arial", "", 10)
    for item in db_order.items:
        # We need product names, which are loaded via selectinload(OrderItem.product)
        # Assuming product attribute exists on OrderItem model
        product_name = getattr(item, 'product', None).name if getattr(item, 'product', None) else f"Produit {item.product_id}"
        pdf.cell(80, 10, product_name[:40], border=1)
        pdf.cell(30, 10, f"{item.price_per_unit_at_purchase:.2f}", border=1, align='C')
        pdf.cell(30, 10, str(item.quantity), border=1, align='C')
        subtotal = item.price_per_unit_at_purchase * item.quantity
        pdf.cell(40, 10, f"{subtotal:.2f}", border=1, align='C')
        pdf.ln()
        
    # Total
    pdf.set_font("Arial", "B", 12)
    pdf.cell(140, 10, "TOTAL À PAYER (MAD)", border=1, align='R')
    pdf.cell(40, 10, f"{db_order.total_amount:.2f}", border=1, align='C')
    pdf.ln(20)
    
    pdf.set_font("Arial", "I", 8)
    pdf.cell(200, 10, txt="Merci pour votre confiance. Paiement à la réception (Cash on Delivery).", ln=True, align='C')

    # Return PDF as stream
    pdf_bytes = pdf.output(dest='S')
    return Response(content=pdf_bytes, media_type="application/pdf", headers={
        "Content-Disposition": f"attachment; filename=Facture_MediUnit_{str(db_order.id)[:8]}.pdf"
    })
