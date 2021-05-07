FROM openjdk:latest
WORKDIR /root
RUN curl https://downloads.apache.org/activemq/5.16.2/apache-activemq-5.16.2-bin.tar.gz --output apache-activemq.tar.gz
RUN tar -zxvf apache-activemq.tar.gz
RUN chown -R $(whoami):root apache-activemq
RUN mv apache-activemq /opt/activemq
# RUN chmod 777 /opt/activemq/data/activemq.log
RUN chmod -R 777 /opt/activemq
EXPOSE 8161/tcp
EXPOSE 61616/tcp
ENTRYPOINT /opt/activemq/bin/activemq console


