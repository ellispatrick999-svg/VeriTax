from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    DATABASE_URL: str = "postgresql://localhost/tax"
    ENV: str = "dev"

settings = Settings()
