#!/bin/bash

PWD=/usr/share/SafeGate
ROOT_PATH=$PWD/bin/schedules
RUNTIME_LUA_DIRECT=/usr/bin

if [ $1 = "WatchCat" ]
then
    $RUNTIME_LUA_DIRECT/lua $ROOT_PATH/WatchCat.lua $PWD
elif [ $1 = "CheckStats" ]
then
    $RUNTIME_LUA_DIRECT/lua $ROOT_PATH/CheckStats.lua $PWD
fi




