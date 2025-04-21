#!/bin/bash

# Adiciona 100ms de delay no tráfego da porta do Free Fire (por exemplo, 10000-10010)
tc qdisc add dev eth0 root netem delay 150ms 40ms loss 1%

# Inicia o WireGuard
wg-quick up wg0

# Mantém o container rodando
tail -f /dev/null
