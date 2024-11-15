#! /bin/bash

# stops services and routines
sudo systemctl stop keyboard_leds
pid=`pgrep keyboard_leds`
kill -SIGKILL  $pid


# removing all routines and services
sudo rm /usr/local/bin/keyboard_leds.sh
sudo rm /usr/local/bin/keyboard_switch.sh
sudo rm /etc/systemd/system/keyboard_leds.service

# reloading services - forcing initialization
sudo systemctl daemon-reload