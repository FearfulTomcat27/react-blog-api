from fastapi import APIRouter, Depends, Query
from sqlalchemy.orm import Session
from typing import List
from schemas import comment as schemas
from services import comment as crud
from utils.database import get_db

router = APIRouter()


# -----评论增删改查-----
# 查找所有评论
@router.get('/comments', response_model=List[schemas.Comment])
def read_comments(db: Session = Depends(get_db),postId: int = Query(None)):
    if postId:
        return crud.find_comment_by_post_id(db, postId)
    else:
        return crud.get_comments(db)


# 根据id查找评论
@router.get('/comments/{comment_id}', response_model=schemas.Comment)
def read_comment(comment_id: int, db: Session = Depends(get_db)):
    return crud.get_comment(db, comment_id)


@router.delete('/comments/{comment_id}')
def delete_comment(comment_id: int, db: Session = Depends(get_db)):
    return crud.delete_comment(db, comment_id)


@router.post('/comments')
def create_comment(comment: schemas.Comment, db: Session = Depends(get_db)):
    return crud.create_comment(db, comment)
