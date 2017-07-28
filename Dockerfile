FROM python:latest

ENV http_proxy http://192.168.25.146:3128/
ENV https_proxy https://192.168.25.146:3128/
ENV no_proxy 192.168.16.75, 127.0.0.1, localhost
ENV PYTHONUNBUFFERED 1

RUN mkdir /src
WORKDIR /src

COPY requirements.txt /src/requirements.txt

RUN pip install -r requirements.txt
