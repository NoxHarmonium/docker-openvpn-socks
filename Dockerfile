FROM alpine:3.21.2

RUN apk --no-cache add \
    dante-server \
    gettext \
    openvpn \
    curl

ENV OPENVPN_CONFIG_FILE=/config/config.ovpn \
    OPENVPN_USERNAME= \
    OPENVPN_PASSWORD= \
    SOCKS_PORT=1080

COPY scripts /usr/local/bin
COPY conf /etc

ENTRYPOINT [ "entrypoint" ]
