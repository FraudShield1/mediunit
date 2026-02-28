from typing import List, Union
from pydantic import AnyHttpUrl, validator
from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    API_V1_STR: str = "/api/v1"
    JWT_SECRET: str
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 60 * 24 * 8  # 8 days

    DATABASE_URL: str
    REDIS_URL: str

    # Cloudflare R2
    R2_ENDPOINT_URL: str
    R2_ACCESS_KEY_ID: str
    R2_SECRET_ACCESS_KEY: str
    R2_BUCKET_NAME: str
    R2_PUBLIC_URL: str

    # BACKEND_CORS_ORIGINS is a JSON-formatted list of strings
    BACKEND_CORS_ORIGINS: List[AnyHttpUrl] = []

    @validator("BACKEND_CORS_ORIGINS", pre=True)
    def assemble_cors_origins(cls, v: Union[str, List[str]]) -> Union[List[str], str]:
        if isinstance(v, str) and not v.startswith("["):
            return [i.strip() for i in v.split(",")]
        elif isinstance(v, (list, str)):
            return v
        raise ValueError(v)

    class Config:
        case_sensitive = True
        env_file = ".env"

        @classmethod
        def customise_sources(
            cls,
            init_settings,
            env_settings,
            dot_env_settings,
            file_secret_settings,
        ):
            # Try to find .env in current dir, then parent, then sibling
            import os
            from pathlib import Path
            
            # Start from the current file (app/core/config.py)
            current_path = Path(__file__).resolve()
            # We are in backend/app/core/config.py
            # 1: core, 2: app, 3: backend, 4: MediUnit
            base_dir = current_path.parent.parent.parent.parent
            env_path = base_dir / ".env"
            
            if env_path.exists():
                cls.env_file = str(env_path)
            
            return (
                init_settings,
                env_settings,
                dot_env_settings,
            )

settings = Settings()
