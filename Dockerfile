FROM python:3.8-alpine3.12

ENV PYTHONPATH=/usr/lib/python3.8/site-packages

COPY requirements.txt .

RUN mkdir -p /etc/apk && echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk --no-cache --update add --virtual .build-deps gcc python3-dev build-base && \
    apk --no-cache --update add py3-pandas py3-lxml py3-typed-ast && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip install -r requirements.txt && \
    apk del .build-deps