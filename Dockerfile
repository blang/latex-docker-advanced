FROM blang/latex
MAINTAINER Benedikt Lang <mail@blang.io>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy wget
RUN apt-get install -qy build-essential
ADD ./getFiraFont.sh ./getFiraFont.sh
RUN ./getFiraFont.sh

ADD ./updateTexPkgs.sh ./updateTexPkgs.sh
RUN ./updateTexPkgs.sh

WORKDIR /data
VOLUME ["/data"]
