FROM centos

RUN yum update -y
RUN yum install -y java-1.8.0-openjdk
RUN yum install -y java-1.8.0-openjdk-devel
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk

RUN mkdir -p /opt/my-app
WORKDIR /opt/my-app
