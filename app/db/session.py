# app/db/session.py

from sqlmodel import create_engine, Session
import os
from dotenv import load_dotenv

load_dotenv()
DATABASE_URL = os.getenv("DATABASE_URL")

if DATABASE_URL is None:
    raise ValueError("DATABASE_URL is not set in the .env file")

engine = create_engine(DATABASE_URL)

def get_session():
    with Session(engine) as session:
        yield session
