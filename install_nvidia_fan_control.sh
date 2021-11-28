#!/bin/bash
cd "$(dirname "$0")" # https://unix.stackexchange.com/a/321846

sudo cp nvidia_fan_control /usr/bin/nvidia_fan_control
sudo cp nvidia_fan_control.service /etc/systemd/system
sudo systemctl start nvidia_fan_control.service
sudo systemctl enable nvidia_fan_control.service
