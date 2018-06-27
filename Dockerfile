FROM node:alpine

LABEL maintainer "NoEnv"
LABEL version "1.1.0"
LABEL description "SonarQube Scanner in NodeJS environment for scanning typescript and javascript projects"

ENV SONAR_SCANNER_VERSION 3.2.0.1227
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH $PATH:/sonar-scanner-${SONAR_SCANNER_VERSION}/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

ADD "https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip" /

RUN set -x \
	&& apk add --no-cache unzip openjdk8-jre \
  && unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip \
  && rm -f sonar-scanner-cli-*.zip \
  && mkdir -p /data

VOLUME /data
WORKDIR /data
