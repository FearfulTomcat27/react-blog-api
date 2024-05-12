FROM mysql:latest

# 设置环境变量
ENV MYSQL_ROOT_PASSWORD=123456\
    MYSQL_DATABASE=blog

COPY db.sql /docker-entrypoint-initdb.d/



# 使用mysql镜像
#FROM python:3.9-slim
#
## 设置工作目录
#WORKDIR /app
#
#RUN apt-get update && apt-get install -y git
#
## 拉取 FastAPI 项目代码
#RUN git clone https://github.com/fearfultomcat27/react-blog-api .
#
#RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
#
#
#COPY db.sql /docker-entrypoint-initdb.d/
#
## 设置启动命令
#CMD ["sh", "-c", "python3 -m uvicorn main:app --host 0.0.0.0 --port 8000"]
