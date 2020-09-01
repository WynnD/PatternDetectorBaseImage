FROM python:3.7-slim-buster

COPY requirements.txt .

RUN echo "[global]" > /etc/pip.conf && echo "extra-index-url=https://www.piwheels.org/simple" >> /etc/pip.conf

RUN apt-get update && apt-get -y install libatlas-base-dev && \
    pip install -r requirements.txt && \
    apt-get -y autoremove