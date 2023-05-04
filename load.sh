#!/bin/bash

service_ip="$1"
port="$2"
for i in `seq 1 1000`; do
  curl -sSf http://${service_ip}:${port}/ > /dev/null &
done

