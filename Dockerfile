FROM python:3

ENV PYTHONBUFFERED 1

WORKDIR /app

ADD . /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

COPY . /app