# 使用mysql镜像
FROM python:3.9-slim

# 设置镜像名
LABEL maintainer="blog-api"

# 设置工作目录
WORKDIR /app

ENV PROJECT_URL="https://github.com/fearfultomcat27/react-blog-api"
ENV SERVER_HOST=0.0.0.0
ENV SERVER_PORT=8000

# 拉取 FastAPI 项目代码
RUN apt update \
    && apt install -y git \
    && apt clean \
    && git clone $PROJECT_URL .

RUN pip install --no-cache-dir -r requirements.txt

# 设置启动命令
CMD ["sh", "-c", "uvicorn main:app --host $SERVER_HOST --port $SERVER_PORT --reload"]
