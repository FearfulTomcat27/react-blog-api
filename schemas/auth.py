from pydantic import BaseModel


class Login(BaseModel):
    username: str
    password: str


class Register(Login):
    email: str
    avatar: str
    role: str = "user"
