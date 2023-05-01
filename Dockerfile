FROM python:3.11.3-alpine

ENV PYTHONUNBUFFERED 0

WORKDIR /app

ADD    requirements.txt    /app/
RUN    pip install -r requirements.txt
