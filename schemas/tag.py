from typing import Optional

from pydantic import BaseModel


class Tag(BaseModel):
    id: Optional[int] = None
    postId: int
    tag: str
