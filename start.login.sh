#!/bin/sh
export ROOT=$(cd `dirname $0`; pwd)
export DAEMON=false

export UDP_ADDRESS=0.0.0.0
export LOGIN_ADDRESS=0.0.0.0
#export LOGIN_ADDRESS=127.0.0.1
export LOGIN_PORT=8001
export MAX_CLIENT=64
export GATE_ADDRESS=0.0.0.0
#export GATE_ADDRESS=127.0.0.1
export GATE_PORT=8888
export GATE_NAME=sample

while getopts "Dk" arg
do
	case $arg in
		D)
			export DAEMON=true
			;;
		k)
			kill `cat $ROOT/run/skynet.pid`
			exit 0;
			;;
	esac
done

$ROOT/build64_debug/skynet/skynet-src/skynet-src $ROOT/server/config.login
