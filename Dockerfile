FROM python:3.7-slim-buster

COPY requirements.txt .

RUN apt-get update && apt-get -y install libatlas-base-dev && \
    pip install -r requirements.txt && \
    apt-get -y autoremove