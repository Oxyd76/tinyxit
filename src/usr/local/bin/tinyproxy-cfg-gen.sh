#!/usr/bin/env sh
# tinyproxy-cfg-gen.sh -- tinyproxy dynamic config generator to stdout.
## rm -rf /run/tinyproxy/tinyproxy.conf 2>&1>/dev/null
awk -F';' '{print "upstream socks5 127.0.0.1:9050 \"" $2"\""}' /usr/local/lib/z-i/dump.csv|tr -d '*'|sort|uniq|grep -v '\s\"\"'>/tmp/tinyproxy.conf.dynamic
cat /etc/tinyproxy/tinyproxy.conf.static /tmp/tinyproxy.conf.dynamic
