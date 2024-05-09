from services import post as crud
from utils.database import  SessionLocal

if __name__ == '__main__':
    db = SessionLocal()
    post = crud.get_posts(db)
    print(post[0].date)