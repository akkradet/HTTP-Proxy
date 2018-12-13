#!/bin/bash
yum -y update
yum install -y squid
systemctl start squid
systemctl  enable squid
systemctl status squid
# Copy config from github
curl -o /etc/squid/squid.conf https://raw.githubusercontent.com/akkradet/HTTP-Proxy/master/squid.conf
systemctl  restart squid
