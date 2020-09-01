FROM python:3.8-slim

COPY requirements.txt .

ENV PYTHONPATH=/usr/lib/python3.8/dist-packages

RUN apt update \
    && apt -y install python3-pandas python3-lxml python3-numpy python3-typed-ast \
    && apt-get autoremove \
    && pip install -r requirements.txt
