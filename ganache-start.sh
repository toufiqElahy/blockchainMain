#!/usr/bin/env sh

set -x #echo on

DATA_DIR=/root/Toufiq/localnet/data/ganache-db

ganache-cli --hardfork istanbul \
  --blockTime 1 \
  --db $DATA_DIR \
  --account 0xfe344feaea4d8e5169a6d8f25c86681773b8cf69bb920bcc7df44892f129091c,1000000000000000000000 \
  --gasLimit 8000000 \
  --gasPrice 0 \
  -p 9545 -h 0.0.0.0
