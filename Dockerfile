FROM ubuntu:20.04

RUN apt update && apt install -y wireguard iproute2 iptables curl net-tools iputils-ping

COPY entrypoint.sh /entrypoint.sh
COPY wg0.conf /etc/wireguard/wg0.conf

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
