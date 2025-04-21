#!/bin/bash

# Adiciona 300ms de delay com jitter de 100ms e 5% de perda de pacote
tc qdisc add dev eth0 root netem delay 300ms 100ms loss 5%

# Inicia o WireGuard
wg-quick up wg0

# Mantém o container rodando
tail -f /dev/null
