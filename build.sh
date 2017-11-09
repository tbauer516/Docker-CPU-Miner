#!/bin/bash

source .creds

#docker rmi magiminer-image
docker build -t magiminer-image .
#docker run -d --name magiminer -e UNAME=$UNAME -e WNAME=$WNAME -e WPASS=$WPASS magiminer-image
