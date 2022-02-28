FROM ubuntu:16.04

COPY metabase.jar /
RUN apt update && apt install -y default-jdk
RUN apt update && apt -y upgrade && apt install -y curl
RUN curl https://downloads.metabase.com/v0.42.2/metabase.jar

CMD ["java -jar metabase.jar"]

