#!/bin/sh
set -e

PASSWORD=$(redis-cli config get requirepass | tail -1)

if [ ! -z $PASSWORD ]; then
    redis-cli -a $PASSWORD PING
else
    redis-cli PING
fi
