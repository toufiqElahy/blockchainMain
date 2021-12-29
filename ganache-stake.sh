#!/usr/bin/env sh

set -x #echo on

# stake
STAKE=10000

# fee
FEE=2000

# private key to deploy contracts
export PRIVATE_KEY=0xfe344feaea4d8e5169a6d8f25c86681773b8cf69bb920bcc7df44892f129091c
export MNEMONIC=0xfe344feaea4d8e5169a6d8f25c86681773b8cf69bb920bcc7df44892f129091c

# export heimdall id
export HEIMDALL_ID=heimdall-1370

# cd matic contracts
cd /root/Toufiq/localnet/code/contracts

# root contracts are deployed on base chain

npm run truffle exec scripts/stake.js -- --network goerli 0x45BD27bB68B07FE9541B26955d880b70df34B960 0x1bae6a9360d1e6c1860b5b971eee52a29c36c0a2e590eba82557bc9e71f8f000e726128ec1189bde6fdb77da0070fd8cdeba0c9d562918e84a908c4b9ed8d4d7 $STAKE $FEE
sleep 10
