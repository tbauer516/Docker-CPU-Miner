#!/bin/bash

if [[ "$#" -lt 1 || "$#" -gt 3 ]]; then
  echo "usage: run.sh <credential file> <num threads> [<max temp>]"
  exit 1
fi

source $1
UNAME=${UNAME:+"$UNAME."}

echo $UNAME$WNAME

docker run -d ${NAME:+'--name' "$NAME"} miner-image-test cpuminer -o $POOLADDRESS - $ALGO -u $UNAME$WNAME -p $WPASS --threads=$THR --max-temp=$TEMP
