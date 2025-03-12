FROM ubuntu:22.04
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y openjdk-21-jre wget tzdata
COPY . /root
WORKDIR /root
RUN ls /root
RUN /root/install.sh
ENTRYPOINT [ "/root/entrypoint.sh" ]
