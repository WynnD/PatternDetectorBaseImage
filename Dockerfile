FROM python:3.8-alpine

ENV PYTHONPATH=/usr/lib/python3.8/site-packages

COPY requirements.txt .

RUN mkdir -p /etc/apk && echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk --no-cache --update add libxml2 libxslt py3-pandas py3-numpy

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install -r requirements.txt