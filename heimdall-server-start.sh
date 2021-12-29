#!/usr/bin/env sh

set -x #echo on

HEIMDALL_HOME_DIR=/root/Toufiq/localnet/data/heimdall
BUILD_DIR=/root/Toufiq/localnet/code/heimdall/build

$BUILD_DIR/heimdalld --home $HEIMDALL_HOME_DIR rest-server