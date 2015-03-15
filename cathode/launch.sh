#!/bin/bash
export DISPLAY=:0.0
sudo docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --name cathode retrocathode
