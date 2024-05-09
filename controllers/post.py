from fastapi import APIRouter, Depends, Body
from sqlalchemy.orm import Session
from typing import List
from schemas import post as schemas
from services import post as crud
from utils.database import get_db

router = APIRouter()


# -----文章增删改查-----

# 展示所有文章


# 根据id查找文章
@router.get('/posts/{post_id}', response_model=schemas.Post)
def read_post(post_id: int, db: Session = Depends(get_db)):

    return crud.get_post(db, post_id)


# 创建文章
@router.post('/posts')
def create_post(db: Session = Depends(get_db), post: schemas.Post = Body(...)):
    return crud.create_post(db, post)


@router.delete('/posts/{post_id}')
def delete_post(post_id: int, db: Session = Depends(get_db)):
    return crud.delete_post(db, post_id)


@router.get('/posts', response_model=List[schemas.Post])
def read_posts(db: Session = Depends(get_db)):
    post = crud.get_posts(db)
    print(post)
    return post
