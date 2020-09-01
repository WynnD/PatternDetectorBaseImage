FROM python:3.8-slim

COPY requirements.txt .

RUN apt update \
    && apt install libxml2-dev libxslt-dev \
    && pip install -r requirements.txt
