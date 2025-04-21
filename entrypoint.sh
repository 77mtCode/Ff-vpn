#!/bin/bash

# Adiciona lag apenas nas portas usadas pelo Free Fire (exemplo 10000–10010)
tc qdisc add dev eth0 root netem delay 120ms 20ms distribution normal

tc filter add dev eth0 protocol ip parent 1:0 prio 3 u32 match ip dport 10000 0xfff0 flowid 1:3

# Sobe o WireGuard
wg-quick up wg0

# Mantém o container rodando
tail -f /dev/null
