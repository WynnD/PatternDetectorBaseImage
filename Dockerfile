FROM python:3.8-slim-buster

ENV PYTHONPATH=/usr/lib/python3.8/site-packages

COPY requirements.txt .

RUN apt-get install python3-pandas python3-numpy python3-lxml && \
    pip install -r requirements.txt
