#!/bin/bash

# start wallet
ravendarkd -daemon -conf=/root/.ravendarkconf/ravendark.conf
sleep 15
# import private key to wallet
ravendark-cli --conf=/root/.ravendarkconf/ravendark.conf importprivkey "pool-priv-key" "" false
# start redis
/etc/init.d/redis_6379 start
sleep 15
# start mining pool
pm2 start node -- init.js

#to keep the container running
# tail -f /dev/null
pm2 log
