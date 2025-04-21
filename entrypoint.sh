#!/bin/bash

# Limpa qualquer configuração anterior
tc qdisc del dev eth0 root || true

# Adiciona 120ms de delay com jitter leve de 20ms
tc qdisc add dev eth0 root netem delay 120ms 20ms distribution normal

# Inicia o WireGuard
wg-quick up wg0

# Mantém o container rodando
tail -f /dev/null
