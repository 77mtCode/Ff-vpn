#!/bin/bash

# Adiciona delay com variação (jitter) e pequena perda de pacotes
tc qdisc add dev eth0 root netem delay 500ms 50ms loss 3%

# Inicia o WireGuard
wg-quick up wg0

# Mantém o container rodando
tail -f /dev/null
