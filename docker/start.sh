#!/bin/bash

if [ -z "$1" ]; then
    docker exec -it ros-noetic-container bash
elif [ $1 == "detach" ]; then
    docker exec -t -d ros-noetic-container bash -c /root/source_this.sh
fi