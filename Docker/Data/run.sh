#!/bin/bash


echo 10.132.191.193 mysql >> /etc/hosts

# Postfix use smart host to relay email
postconf -e \
    relayhost=[post-office.htmlgraphic.com]:25 \
    inet_protocols=ipv4



/usr/bin/supervisord -n -c /etc/supervisor/conf.d/supervisord.conf