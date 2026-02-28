import json
from typing import Any, Optional
from redis.asyncio import Redis
from app.core.config import settings

class Cache:
    def __init__(self):
        self.redis: Optional[Redis] = None

    async def connect(self):
        if not self.redis:
            self.redis = Redis.from_url(settings.REDIS_URL, decode_responses=True)

    async def set(self, key: str, value: Any, expire: int = 3600):
        await self.connect()
        await self.redis.set(key, json.dumps(value), ex=expire)

    async def get(self, key: str) -> Optional[Any]:
        await self.connect()
        data = await self.redis.get(key)
        if data:
            return json.loads(data)
        return None

    async def invalidate(self, key: str):
        await self.connect()
        await self.redis.delete(key)

cache = Cache()
