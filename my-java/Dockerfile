# 以下の公式 Dockerfile を参考に簡略化
# https://github.com/AdoptOpenJDK/openjdk-docker/blob/master/11/jdk/debian/Dockerfile.hotspot.releases.full
FROM ubuntu:21.04

RUN apt update
RUN apt install -y curl
RUN curl -LfSo /tmp/openjdk.tar.gz https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.11_9.tar.gz
RUN mkdir -p /opt/java/openjdk
RUN tar -xf /tmp/openjdk.tar.gz --strip-components=1 -C /opt/java/openjdk

ENV JAVA_HOME=/opt/java/openjdk
ENV PATH="/opt/java/openjdk/bin:$PATH"
