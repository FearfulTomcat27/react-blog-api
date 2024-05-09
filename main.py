from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from controllers import comment, post, tag, user

app = FastAPI()

origins = [
    "http://localhost",
    "http://localhost:8080",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(comment.router)
app.include_router(post.router)
app.include_router(tag.router)
app.include_router(user.router)

