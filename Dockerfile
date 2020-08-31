FROM python:3.8-alpine

RUN mkdir -p /etc/apk && echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk --no-cache --update add gcc gfortran build-base wget freetype-dev libpng-dev openblas-dev libxml2-dev libxslt-dev musl-dev

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install -r requirements.txt