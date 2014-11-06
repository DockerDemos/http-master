FROM ubuntu:14.10
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV NODE http://nodejs.org/dist/v0.11.14/node-v0.11.14.tar.gz

RUN apt-get update && apt-get install -y curl python build-essential
RUN mkdir /node
RUN curl -sL $NODE | tar -xz -C /node --strip-components=1
WORKDIR /node
RUN ./configure
RUN make
RUN make install
RUN npm install --unsafe-perm -g http-master

EXPOSE 80
EXPOSE 443

VOLUME ["/etc/http-master"]

ENTRYPOINT [ "http-master", "--config", "/etc/http-master/http-master.conf" ]
