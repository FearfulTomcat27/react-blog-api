# 使用 Python 官方镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 拉取 FastAPI 项目代码
RUN git clone https://github.com/fearfultomcat27/react-blog-api . \
    && pip install -r /app/requirements.txt


# 设置环境变量
ENV MYSQL_HOST=mysql \
    MYSQL_USER=root \
    MYSQL_PASSWORD=123456 \
    MYSQL_DB=blog \
    MYSQL_PORT=3306

# 设置启动命令
CMD ["sh", "-c", "mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DB < /app/db.sql && uvicorn /app/main:app --host 0.0.0.0 --port 8000"]
