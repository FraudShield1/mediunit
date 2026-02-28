from fastapi import APIRouter
from app.api.v1.endpoints import auth, products, kits, orders, dashboard, users, compliance

api_router = APIRouter()

api_router.include_router(auth.router, prefix="/auth", tags=["auth"])
api_router.include_router(products.router, prefix="/products", tags=["products"])
api_router.include_router(kits.router, prefix="/kits", tags=["kits"])
api_router.include_router(orders.router, prefix="/orders", tags=["orders"])
api_router.include_router(dashboard.router, prefix="/dashboard", tags=["dashboard"])
api_router.include_router(users.router, prefix="/users", tags=["users"])
api_router.include_router(compliance.router, prefix="/compliance", tags=["compliance"])

@api_router.get("/status")
def get_status():
    return {"status": "ok", "version": "1.0.0"}
