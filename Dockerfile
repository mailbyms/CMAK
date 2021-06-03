### phase 1
FROM openjdk:11

RUN cd /tmp \
    && wget https://github.com/yahoo/CMAK/archive/refs/heads/master.zip \
    && unzip master \
    && cd CMAK-master \
    && ./sbt clean dist \
    && unzip -d /target target/universal/cmak-*.zip \
    && mv /target/cmak* /target/cmak

### phase 2
FROM openjdk:11

COPY --from=0  /target /opt/
WORKDIR /opt/cmak
ENTRYPOINT ["./bin/cmak","-Dconfig.file=conf/application.conf"]

EXPOSE 9000
