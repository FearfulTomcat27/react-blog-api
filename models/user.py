from sqlalchemy import Column, Integer, String
from utils.database import Base


class User(Base):
    __tablename__ = "user"

    id = Column(Integer, primary_key=True, index=True)
    username = Column(String, index=True)
    email = Column(String, index=True)
    password = Column(String, index=True)
    avatar = Column(String, index=True)
    role = Column(String, index=True)
