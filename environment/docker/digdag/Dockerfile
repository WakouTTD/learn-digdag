FROM openjdk:8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN apt-get update && apt-get install -y \
  curl gettext-base postgresql-client \
  && rm -rf /var/lib/apt/lists/*

# Installing digdag server
RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest" && \
  chmod +x /usr/local/bin/digdag

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

#    ENCRYPTION_KEY=MDEyMzQ1Njc4OTAxMjM0NQ==

COPY ./docker/digdag/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY ./docker/digdag/server.properties /etc/digdag/server.properties
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 65432 65433

ENTRYPOINT ["/usr/local/bin/entrypoint.sh","/usr/local/bin/digdag","server","--config","/etc/digdag/server.properties"]