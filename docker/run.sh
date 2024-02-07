#!/bin/bash

./stop.sh

xhost +local:root
export DISPLAY=:1.0

docker run -t -d --privileged --net=host \
--name ros-noetic-container \
-e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority:ro \
-v $PWD/ws:/root/catkin_ws \
ros-noetic-container


# -v $PWD/code:/root/code \--env="DISPLAY" \