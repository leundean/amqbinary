FROM openjdk:latest
WORKDIR /root
RUN curl https://downloads.apache.org/activemq/5.16.2/apache-activemq-5.16.2-bin.tar.gz --output apache-activemq-5.16.2-bin.tar.gz
RUN tar -zxvf apache-activemq-5.16.2-bin.tar.gz
# Since own user privilege is required for mv
RUN chown -R root:root apache-activemq-5.16.2
RUN mv apache-activemq-5.16.2 /opt/activemq
# Since owner privilege is required for /opt/activemq/data/activemq.log
RUN chmod -R 700 /opt/activemq
EXPOSE 8161/tcp
EXPOSE 61616/tcp
ENTRYPOINT /opt/activemq/bin/activemq console
