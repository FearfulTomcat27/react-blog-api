from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from utils.database import Base


class Tag(Base):
    __tablename__ = "tags"

    id = Column(Integer, primary_key=True, index=True)
    postId = Column(Integer, ForeignKey("posts.id"))
    tag = Column(String)

    owner = relationship("Post", back_populates="tags")
