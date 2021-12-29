#!/usr/bin/env sh

set -x #echo on

ADDRESS=0x45BD27bB68B07FE9541B26955d880b70df34B960
BOR_CHAIN_ID=1370

if [ -z "$ADDRESS" ]
  then
    echo "Address is required as first argument"
  exit 1
fi

if [ -z "$BOR_CHAIN_ID" ]
  then
    echo "Chain id is required as second argument"
  exit 1
fi

BUILD_DIR=/root/Toufiq/localnet/code/bor/build/bin
DATA_DIR=/root/Toufiq/localnet/data
BOR_DATA_DIR=/root/Toufiq/localnet/data/bor
GENESIS_PATH=/root/Toufiq/localnet/code/genesis-contracts/genesis.json

mkdir -p $DATA_DIR/logs

$BUILD_DIR/bor --datadir $BOR_DATA_DIR \
  --port 30303 \
  --http --http.addr '0.0.0.0' \
  --http.vhosts '*' \
  --http.corsdomain '*' \
  --http.port 8545 \
  --http.api 'eth,net,web3,txpool' \
  --ipcpath $BOR_DATA_DIR/bor.ipc \
  --networkid $BOR_CHAIN_ID \
  --miner.gasprice '0' \
  --keystore $DATA_DIR/keystore \
  --unlock $ADDRESS \
  --password $DATA_DIR/password.txt \
  --allow-insecure-unlock \
  --maxpeers 200 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0' \
  --mine