#!/bin/bash

docker stop magiminer
docker rm magiminer

docker rmi magiminer-image
