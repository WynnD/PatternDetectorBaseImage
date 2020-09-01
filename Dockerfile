FROM python:3.8-slim

COPY requirements.txt .

RUN apt update \
    && apt -y install python3-pandas python3-lxml python3-numpy python3-typed-ast \
    && pip install -r requirements.txt
