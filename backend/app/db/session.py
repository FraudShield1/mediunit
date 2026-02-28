import os
from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession
from sqlalchemy.orm import sessionmaker
from app.core.config import settings

# Detect if running in Cloudflare Worker
IS_CLOUDFLARE = os.getenv("ENVIRONMENT") == "production"

if not IS_CLOUDFLARE:
    # Local SQLite/Postgres engine
    async_engine = create_async_engine(
        settings.DATABASE_URL.replace("postgresql://", "postgresql+asyncpg://"),
        echo=True,
        future=True
    )

    AsyncSessionLocal = sessionmaker(
        async_engine, class_=AsyncSession, expire_on_commit=False
    )

    async def get_db():
        async with AsyncSessionLocal() as session:
            yield session
else:
    # Production D1 bridge - In a real Cloudflare Python Worker, 
    # the 'env' object is passed to on_fetch. We'll use a global or 
    # context-based approach for the DB binding.
    async def get_db():
        # This will be overridden or handled by the on_fetch wrapper
        yield None
