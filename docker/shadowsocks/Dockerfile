FROM debian:stretch

ENV DEPENDENCIES git-core gettext build-essential autoconf libtool libssl-dev libpcre3-dev \
                 asciidoc xmlto zlib1g-dev libev-dev libudns-dev libsodium-dev \
                 ca-certificates automake libmbedtls-dev libc-ares-dev

ENV BASEDIR /tmp/shadowsocks-libev

# Set up building environment
RUN apt-get update \
    && apt-get install --no-install-recommends -y $DEPENDENCIES  && apt-get clean \
    && rm -r /var/lib/apt/lists/*

# Get the latest code, build and install
RUN git clone https://github.com/shadowsocks/shadowsocks-libev.git $BASEDIR
WORKDIR $BASEDIR
RUN git submodule update --init --recursive \
 && ./autogen.sh \
 && ./configure \
 && make \
 && make install

# Tear down building environment and delete git repository
WORKDIR /
RUN rm -rf $BASEDIR/shadowsocks-libev

CMD ["ss-server", "-u", "-c", "/etc/shadowsocks/config.json"]
