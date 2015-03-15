#!/bin/bash
export DISPLAY=:0.0
sudo docker run -it \
    --net host \ # may as well YOLO
    --cpuset 0 \ # control the cpu
    --memory 512mb \ # max memory it can use
    -v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
    -e DISPLAY=$DISPLAY \ # pass the display
    -v $HOME/Downloads:/root/Downloads \ # optional, but nice
    -v $HOME/.config/google-chrome/:/data \ # if you want to save state
    -v /dev/snd:/dev/snd --privileged \ # so we have sound
    --name chrome \
    chromebrowser
