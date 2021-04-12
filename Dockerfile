FROM openjdk-11-el7
WORKDIR /root
RUN curl https://downloads.apache.org/activemq/5.16.1/apache-activemq-5.16.1-bin.tar.gz --output apache-activemq-5.16.1-bin.tar.gz
RUN tar -zxvf apache-activemq-5.16.1-bin.tar.gz
RUN chown -R $(whoami):root apache-activemq-5.16.1
RUN mv apache-activemq-5.16.1 /opt/activemq
# RUN chmod 777 /opt/activemq/data/activemq.log
RUN chmod -R 777 /opt/activemq
EXPOSE 8161/tcp
EXPOSE 61616/tcp
ENTRYPOINT /opt/activemq/bin/activemq console


