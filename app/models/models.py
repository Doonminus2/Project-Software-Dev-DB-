# app/models/models.py
from sqlmodel import SQLModel, Field
from typing import Optional
from datetime import datetime

class Task(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    title: str
    description: Optional[str] = None
    is_done: bool = False
    created_at: datetime = Field(default_factory=datetime.utcnow)
