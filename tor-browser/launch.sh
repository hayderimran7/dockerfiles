#!/bin/bash
sudo docker run -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
    -e DISPLAY=$DISPLAY \ # pass the display
    -v /dev/snd:/dev/snd --privileged \ # sound
    --name tor-browser \
    torbrowser
