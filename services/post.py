from sqlalchemy.orm import Session

from models import post as models
from schemas import post as schemas


def get_posts(db: Session):
    return db.query(models.Post).all()


def get_post(db: Session, post_id: int):
    print(post_id)
    return db.query(models.Post).filter(models.Post.id == post_id).first()


def create_post(db: Session, post: schemas.Post):
    post = models.Post(title=post.title, content=post.content, date=post.date)
    for tag in post.tags:
        tag = models.Tag(postId=post.id, tag=tag)
        print(tag)
        db.add(tag)
    db.add(post)
    db.commit()
    db.refresh(post)
    return post.id


def delete_post(db: Session, post_id: int):
    post = db.query(models.Post).filter(models.Post.id == post_id).first()
    db.delete(post)
    db.commit()
    return {"message": "Post deleted successfully"}