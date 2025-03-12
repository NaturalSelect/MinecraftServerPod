FROM ubuntu:22.04
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
RUN apt update
RUN apt install -y openjdk-21-jre wget
COPY . /root
WORKDIR /root
RUN /root/install_server.sh
ENTRYPOINT [ "/root/run.sh" ]
