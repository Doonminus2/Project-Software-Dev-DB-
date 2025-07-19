# app/main.py
from fastapi import FastAPI
from app.models import models
from app.db.session import engine
from app.routers import task

app = FastAPI()

@app.on_event("startup")
def on_startup():
    models.SQLModel.metadata.create_all(engine)

# เชื่อม router
app.include_router(task.router)

