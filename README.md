
## 概况
- `CMAK` 是 yahoo 开源的 Kafka 管理网站 <https://github.com/yahoo/CMAK>，之前叫 `Kafka Manager`
- 官方镜像 <https://hub.docker.com/r/kafkamanager/kafka-manager> 只发布到 `3.0.0.4`
- 非官方的镜像以源码 tag `3.0.0.5` 编译，最高支持 kafka `2.4` 版本
- 本镜像以官方源码 master 分支编译，最高支持 kafka `2.8` 版本
- `Dockerfile` 参考 <https://github.com/116davinder/kafka-cluster-ansible/blob/master/docker/cmak/Dockerfile>，使用多阶段构建优化
- `Docker-compose.yml` 参考 <https://github.com/vimagick/dockerfiles/blob/master/cmak/docker-compose.yml>

## 使用注意
- CMAK 依赖 ZooKeeper 保存状态，需要设置环境变量 `ZK_HOSTS`，默认  
    ```
    ZK_HOSTS="my.zookeeper.host.com:2181"
    ```
