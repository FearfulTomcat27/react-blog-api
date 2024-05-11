from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from controllers import comment, post, tag, user, auth

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(comment.router)
app.include_router(post.router)
app.include_router(tag.router)
app.include_router(user.router)
app.include_router(auth.router)
