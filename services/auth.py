from sqlalchemy.orm import Session
from schemas import auth as schemas
from models import user as models


def login(db: Session, user: schemas.Login):
    account = db.query(models.User).filter(models.User.username == user.username,
                                           models.User.password == user.password).first()
    if account:
        return {"message": "Login successful", "token": account.id}
    else:
        return {"message": "Invalid credentials"}


def register(db: Session, user: schemas.Register):
    db_user = models.User(**user.model_dump())
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return {"message": "User registered successfully", "token": db_user.id}
