FROM openjdk:latest
USER root
WORKDIR /root
COPY activemq /root
EXPOSE 8161/tcp
EXPOSE 61616/tcp
ENTRYPOINT activemq/bin/activemq console

