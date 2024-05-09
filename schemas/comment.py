from pydantic import BaseModel


class Comment(BaseModel):
    id: int
    postId: int
    name: str
    mood: bool
    comment: str
    date: str
    avatar: str