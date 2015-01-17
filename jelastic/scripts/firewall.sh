#!/bin/bash -eu

/sbin/iptables -I INPUT -p tcp --dport 4949 -j ACCEPT
/sbin/iptables -t nat -I PREROUTING -p tcp -m tcp --dport 4949 -j REDIRECT --to-ports 9990
