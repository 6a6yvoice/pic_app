FROM python:3.11-alpine3.16

COPY requirments.txt /temp/requirments.txt
COPY pic /pic
WORKDIR /pic
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirments.txt

RUN adduser --disabled-password pic-user

USER pic-user
