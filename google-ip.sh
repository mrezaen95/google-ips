#!/usr/bin/env bash

while true; do ips=$(curl -s https://developers.google.com/static/search/apis/ipranges/googlebot.json | jq -r '.prefixes.[].ipv4Prefix' | grep -v null); echo -e "HTTP/1.1 200 OK\n\n$ips" | nc -c -l -p 5000; done