FROM ubuntu:14.10
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV NODE http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz
ENV CONFIG_LOADER https://github.com/encharm/http-master-example-httploader.git

RUN apt-get update && \
    apt-get install -y curl python git build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /node
RUN curl -sL $NODE | tar -xz -C /node --strip-components=1
WORKDIR /node
RUN ./configure
RUN make
RUN make install
RUN npm install --unsafe-perm -g http-master request

# Install the Config Loader
WORKDIR /config-loader
RUN git clone $CONFIG_LOADER /config-loader
RUN npm install

EXPOSE 80
EXPOSE 443

VOLUME ["/etc/http-master"]

ENTRYPOINT [ "http-master" ]
