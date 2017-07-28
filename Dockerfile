FROM python:latest

ENV PYTHONUNBUFFERED 1

RUN mkdir /src
WORKDIR /src

COPY requirements.txt /src/requirements.txt

RUN pip install -r requirements.txt
