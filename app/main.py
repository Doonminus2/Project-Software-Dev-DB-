# app/main.py
from fastapi import FastAPI , Request
from app.models import models
from app.db.session import engine
from app.routers import task
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates

app = FastAPI()

# กำหนด static files และ templates
app.mount("/static", StaticFiles(directory="app/static"), name="static")
templates = Jinja2Templates(directory="app/templates")

@app.get("/")
def home(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

@app.on_event("startup")
def on_startup():
    models.SQLModel.metadata.create_all(engine)

# เชื่อม router
app.include_router(task.router)

