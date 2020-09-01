FROM python:3.7-slim

COPY requirements.txt .

RUN apt update \
    && apt -y install python3-pandas python3-lxml python3-numpy python3-typed-ast \
    && apt -y build-dep python3-pandas python3-lxml python3-numpy python3-typed-ast \
    && apt-get autoremove \
    && pip install -r requirements.txt
