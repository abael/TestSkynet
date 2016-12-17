#!/bin/sh
export ROOT=$(cd `dirname $0`; pwd)
export BUILD_ROOT=$ROOT/build64_debug

export LUA_CPATH="$BUILD_ROOT/skynet/luaclib/?.so;$BUILD_ROOT/client/luaclib/?.so"
export LUA_PATH="$ROOT/client/?.lua;$ROOT/skynet/lualib/?.lua"

$BUILD_ROOT/skynet/3rd/lua/lua client/main.lua
