from typing import Optional
from pydantic import BaseModel

from schemas.tag import Tag

class Post(BaseModel):
    id: Optional[int] = None
    title: str
    content: str
    date: str

    tags: list[Tag] = []
