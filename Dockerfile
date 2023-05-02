FROM python:3.11.3

RUN apt-get update && \
    apt-get install -y libpq-dev gcc

ENV PYTHONUNBUFFERED=0

WORKDIR /app

ADD     requirements.txt    /app/
RUN     pip install -r requirements.txt

