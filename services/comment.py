from sqlalchemy.orm import Session

from models import comment as models
from schemas import comment as schemas


def get_comments(db: Session):
    return db.query(models.Comment).all()


def get_comment(db: Session, comment_id: int):
    return db.query(models.Comment).filter(models.Comment.id == comment_id).first()


def delete_comment(db:Session, comment_id: int):
    comment = db.query(models.Comment).filter(models.Comment.id == comment_id).first()
    db.delete(comment)
    db.commit()
    return {"message": "Comment deleted successfully"}


