FROM ubuntu:16.04

COPY metabase.jar /
RUN apt update && apt install -y default-jdk

CMD ["/bin/bash"]

