from fastapi import APIRouter, Depends, Query
from sqlalchemy.orm import Session
from schemas import user as schemas
from services import user as crud
from utils.database import get_db

router = APIRouter()


# -----用户增删改查-----


# 根据用户名查找用户
@router.get('/user/')
def read_user_by_username(username: str = Query(None, description="The username to search for"),
                          db: Session = Depends(get_db)):
    return crud.get_user_by_username(db, username)


# 登录
@router.get('/user/')
def login(username: str = Query(None, description="The username to search for"),
          password: str = Query(None, description="The password to search for"),
          db: Session = Depends(get_db)):
    return crud.login(db, username, password)


@router.get('/user/{id}')
def find_user_by_id(id: int, db: Session = Depends(get_db)):
    return crud.get_user_by_id(db, id)