# docker-zookeeper
docker zookeeper
zookeeper
相关配置文件地址
[github](https://github.com/hjl2626/docker-zookeeper)

## 启动方式
mkdir -p [/data/zk/conf/](https://github.com/hjl2626/docker-zookeeper/tree/master/conf)
mkdir -p [/data/zk/data/](https://github.com/hjl2626/docker-zookeeper/tree/master/data)


数据目录, 端口 , zk地址请修改 server.properties
docker run -itd --name zk \
-p 2181:2181 \
-v /data/zk/data:/data \
-v/data/zk/conf:/opt/zookeeper/conf \
zookeeper:3.5.9



## 集群部署
数据目录新增myid 对应相应节点
docker-compose -f [docker-compose.yml](https://github.com/hjl2626/docker-zookeeper/blob/master/docker-compose.yml) up -d
