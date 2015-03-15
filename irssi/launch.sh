#!/bin/bash
mkdir -p $HOME/.irssi/
sudo docker run -it \
    -v /etc/localtime:/etc/localtime \
    -v $HOME/.irssi:/home/user/.irssi \ # mounts irssi config in container
    --read-only \ # cool new feature in 1.5
    --name irssi \
    irssi
