#!/usr/bin/env sh

set -x #echo on

BUILD_DIR=/root/Toufiq/localnet/code/bor/build/bin
DATA_DIR=/root/Toufiq/localnet/data
BOR_DATA_DIR=/root/Toufiq/localnet/data/bor
GENESIS_PATH=/root/Toufiq/localnet/code/genesis-contracts/genesis.json

# create bor, logs and keystore directory
mkdir -p $DATA_DIR/logs

# init bor
$BUILD_DIR/bor --datadir $BOR_DATA_DIR init $GENESIS_PATH

echo "Setup done!"