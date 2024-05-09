from fastapi import APIRouter, Depends, Body
from sqlalchemy.orm import Session
from typing import List
from schemas import tag as schemas
from services import tag as crud
from utils.database import get_db

router = APIRouter()


# -----标签增删改查-----
# 创建标签
@router.post('/tags')
def create_tag(db: Session = Depends(get_db), tags: List[schemas.Tag] = Body(...)):
    return crud.create_tag(db, tags)
