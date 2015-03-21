#!/bin/bash
export DISPLAY=:0
sudo docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -v /dev/snd:/dev/snd --privileged --name atstash stash
