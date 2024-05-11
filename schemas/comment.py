from pydantic import BaseModel
from typing import Optional

class Comment(BaseModel):
    id: Optional[int] = None
    postId: int
    name: str
    mood: bool
    comment: str
    date: str
    avatar: str