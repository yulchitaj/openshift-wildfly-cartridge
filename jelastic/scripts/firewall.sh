#!/bin/bash -eu

/sbin/iptables -t nat -I PREROUTING -p tcp -m tcp --dport 4949 -j REDIRECT --to-ports 9990
/sbin/iptables -A INPUT -p tcp --dport 4949 -j ACCEPT
