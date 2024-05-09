from typing import List
from sqlalchemy.orm import Session

from models import tag as models
from schemas import tag as schemas


def create_tag(db: Session, tags: List[schemas.Tag]):
    for tag in tags:
        tag = models.Tag(postId=tag.postId, tag=tag.tag)
        db.add(tag)
    db.commit()
    return {"message": "Tags created successfully"}
