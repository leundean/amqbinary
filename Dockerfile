FROM openjdk:latest
WORKDIR /root
RUN curl https://downloads.apache.org/activemq/5.16.5/apache-activemq-5.16.5-bin.tar.gz --output apache-activemq-5.16.5-bin.tar.gz
RUN tar -zxvf apache-activemq-5.16.5-bin.tar.gz
RUN chown -R $(whoami):root apache-activemq-5.16.5-bin
RUN mv apache-activemq-5.16.5-bin /opt/activemq
# RUN chmod 777 /opt/activemq/data/activemq.log
RUN chmod -R 777 /opt/activemq
EXPOSE 8161/tcp
