# 使用mysql镜像
FROM oilrmutp57/mysql5.7:1.1


# 设置工作目录
WORKDIR /app

RUN apt-get update && apt-get install -y git python3 python3-pip

# 拉取 FastAPI 项目代码
RUN git clone https://github.com/fearfultomcat27/react-blog-api .

RUN pip3 install --upgrade pip && pip3 install -r requirements.txt


# 设置环境变量
ENV MYSQL_USER=root \
    MYSQL_PASSWORD=123456 \
    MYSQL_DB=blog \
    MYSQL_PORT=3306

COPY db.sql /docker-entrypoint-initdb.d/

# 设置启动命令
CMD ["sh", "-c", "uvicorn /app/main:app --host 0.0.0.0 --port 8000"]
