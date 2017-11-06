#!/bin/sh

iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o eth0 -j MASQUERADE

socat udp-listen:443,reuseaddr TUN:10.0.0.1/24,up
