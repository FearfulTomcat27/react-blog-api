from sqlalchemy import Column, Integer, String, Text
from sqlalchemy.orm import relationship
from models.tag import Tag
from utils.database import Base

class Post(Base):
    __tablename__ = "posts"

    id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    title = Column(String)
    content = Column(Text)
    date = Column(String)

    tags = relationship("Tag", back_populates="owner")
