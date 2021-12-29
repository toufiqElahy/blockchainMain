#!/usr/bin/env sh

set -x #echo on

HEIMDALL_HOME_DIR=/root/Toufiq/localnet/data/heimdall
BUILD_DIR=/root/Toufiq/localnet/code/heimdall/build

$BUILD_DIR/bridge --home $HEIMDALL_HOME_DIR start --all