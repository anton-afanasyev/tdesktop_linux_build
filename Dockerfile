FROM ubuntu:14.04
LABEL maintainer="anton.a.afanasyev@gmail.com"

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get update

ENV HOME /root
WORKDIR /root

ADD .bashrc /root/.bashrc

ADD build_deps.sh /root/build_deps.sh
RUN /root/build_deps.sh

ADD build_tdesktop.sh /root/build_tdesktop.sh
RUN /root/build_tdesktop.sh

CMD ["bash"]
