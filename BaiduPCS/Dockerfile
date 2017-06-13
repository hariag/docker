FROM         ubuntu:16.04
MAINTAINER    Haria Guo(haria.guo@gmail.com)

#RUN sed -i 's@//archive.ubuntu@//mirrors.aliyun@' /etc/apt/sources.list 

RUN apt-get update && apt-get install -y git build-essential dh-autoreconf dpkg-dev libssl-dev libcurl4-openssl-dev
RUN git clone https://github.com/GangZhuo/BaiduPCS.git
RUN cd BaiduPCS
RUN dpkg-buildpackage -us -uc -i -b
