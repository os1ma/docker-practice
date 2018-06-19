FROM java:8-jre-alpine

ARG PROJECT_HOME=/opt/my-app
ENV JAR=my-app-0.0.1-SNAPSHOT.jar

RUN mkdir -p $PROJECT_HOME
WORKDIR $PROJECT_HOME

ADD target/$JAR $PROJECT_HOME

ENTRYPOINT java -jar $JAR
