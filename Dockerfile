FROM openjdk:8u212-jre-alpine

LABEL zookeeper_version=3.5.9

ENV ZK_HOME=/opt/zookeeper

ENV PATH=${PATH}:${ZK_HOME}/bin

ADD ./apache-zookeeper-3.5.9-bin.tar.gz /opt/

RUN mkdir -p /opt/zookeeper
RUN cp -rf /opt/apache-zookeeper-3.5.9-bin/* /opt/zookeeper

RUN mkdir -p /data

RUN apk add --no-cache bash curl jq


ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh" ,"start-foreground"]