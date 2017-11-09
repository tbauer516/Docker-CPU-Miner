#!/bin/bash

source creds

if [[ "$#" -eq 2 ]]; then
  docker run -d --name magiminer -e UNAME=$UNAME -e WNAME=$WNAME -e WPASS=$WPASS -e THR=$1 -e TEMP=$2 magiminer-image
elif [[ "$#" -eq 1 ]]; then
  docker run -d --name magiminer -e UNAME=$UNAME -e WNAME=$WNAME -e WPASS=$WPASS -e THR=$1 magiminer-image
else
  echo "usage: run.sh <num threads> [<max temp>]"
  exit 1
fi
