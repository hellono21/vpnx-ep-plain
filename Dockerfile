FROM alpine:3.5

RUN apk add socat iptables --no-cache

COPY . .

EXPOSE 443/udp

CMD ["/entry.sh"]
