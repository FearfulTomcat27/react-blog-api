from sqlalchemy import Column, Integer, String, Text, Boolean
from utils.database import Base


class Comment(Base):
    __tablename__ = "comments"

    id = Column(Integer, primary_key=True, index=True)
    postId = Column(Integer)
    name = Column(String)
    mood = Column(Boolean)
    comment = Column(Text)
    date = Column(String)
    avatar = Column(String)
