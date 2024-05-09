from fastapi import APIRouter, Depends, Body
from sqlalchemy.orm import Session
from services import auth as crud
from services import user as user_crud
from schemas import auth as schemas
from utils.database import get_db

router = APIRouter()


@router.post('/login')
def login(db: Session = Depends(get_db), user: schemas.Login = Body(...)):
    return crud.login(db, user)


@router.post('/register')
def register(db: Session = Depends(get_db), user: schemas.Register = Body(...)):
    user_data = user_crud.get_user_by_username(db, user.username)
    if user_data:
        return {"message": "User already exists"}
    else:
        return crud.register(db, user)
