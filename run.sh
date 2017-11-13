#!/bin/bash

if [[ "$#" -lt 1 || "$#" -gt 3 ]]; then
  echo "usage: run.sh <credential file> <num threads> [<max temp>]"
  exit 1
fi

source $1

docker run -d ${NAME:+'--name' "$NAME"} -e ALGO=$ALGO -e POOLADDRESS=$POOLADDRESS -e UNAME=$UNAME -e WNAME=$WNAME -e WPASS=$WPASS -e THR=$2 ${3:+'-e' "TEMP=$3"} miner-image
