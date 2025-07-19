# app/routers/task.py
from fastapi import APIRouter, Depends
from sqlmodel import Session, select
from app.models.models import Task
from app.db.session import get_session

router = APIRouter()

@router.get("/tasks")
def list_tasks(session: Session = Depends(get_session)):
    tasks = session.exec(select(Task)).all()
    return tasks

@router.post("/tasks")
def create_task(task: Task, session: Session = Depends(get_session)):
    session.add(task)
    session.commit()
    session.refresh(task)
    return task
