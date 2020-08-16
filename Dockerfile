FROM python:3.7-alpine
MAINTAINER Chris Till

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app 
WORKDIR /app 
COPY ./app ./app

# Limits scope of app to not root.
RUN adduser -D user 
USER user  

