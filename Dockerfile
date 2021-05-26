FROM openjdk:latest
# Since available
WORKDIR /root
# Make sure version is available!
RUN curl https://downloads.apache.org/activemq/5.16.2/apache-activemq-5.16.2-bin.tar.gz --output apache-activemq-5.16.2-bin.tar.gz
# Unpack
RUN tar -zxvf apache-activemq-5.16.2-bin.tar.gz
# Own user privilege is required for mv
RUN chown -R root:root apache-activemq-5.16.2
RUN mv apache-activemq-5.16.2 /opt/activemq
# Owner privilege is required for e.g. /opt/activemq/data/activemq.log
RUN chmod -R 700 /opt/activemq
# One default communication port
EXPOSE 8161/tcp
# One default communication port
EXPOSE 61616/tcp
# Beginning of uptime
ENTRYPOINT /opt/activemq/bin/activemq console
