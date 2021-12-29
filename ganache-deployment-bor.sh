#!/usr/bin/env sh

set -x #echo on

# private key to deploy contracts
export PRIVATE_KEY=0xfe344feaea4d8e5169a6d8f25c86681773b8cf69bb920bcc7df44892f129091c
export MNEMONIC=0xfe344feaea4d8e5169a6d8f25c86681773b8cf69bb920bcc7df44892f129091c

# export heimdall id
export HEIMDALL_ID=heimdall-1370

# cd matic contracts repo
cd /root/Toufiq/localnet/code/contracts

# bor contracts are deployed on child chain
npm run truffle:migrate:dev:bor -- --reset -f 5 --to 5
