FROM python:3.8-slim-buster

COPY requirements.txt .

RUN echo "[global]" >> /etc/pip.conf && echo "extra-index-url=https://www.piwheels.org/simple" >> /etc/pip.conf

RUN pip install -r requirements.txt