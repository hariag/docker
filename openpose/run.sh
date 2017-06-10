#!/bin/sh
sudo apt-get -y install x11-xserver-utils
xhost +local:root
nvidia-docker run --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged=true --device /dev/nvidia-uvm:/dev/nvidia-uvm --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl -it guoharia/openpose_gpu:latest /bin/bash
xhost -local:root
