from sqlalchemy.orm import Session

from models import user as models
from schemas import user as schemas


def get_user_by_username(db: Session, username: str):
    return db.query(models.User).filter(models.User.username == username).first()


def login(db: Session, username: str, password: str):
    return db.query(models.User).filter(models.User.username == username, models.User.password == password).first()


def get_user_by_id(db, id):
    return db.query(models.User).filter(models.User.id == id).first()