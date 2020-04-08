FROM postgres:12.2-alpine
ENV LANG ja_JP.utf8

ARG POSTGRES_DB
ARG POSTGRES_USER
ARG POSTGRES_PASSWORD
ARG POSTGRES_HOST
ARG POSTGRES_PORT

ENV POSTGRES_USER=$POSTGRES_USER \
    POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    POSTGRES_HOST=$POSTGRES_HOST \
    POSTGRES_PORT=$POSTGRES_PORT \
    POSTGRES_DB=$POSTGRES_DB \
    LOG_TYPE=local


COPY ./docker/postgres/initdb.d /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*

RUN apk --no-cache update && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
