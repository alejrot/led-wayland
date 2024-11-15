#!/bin/bash

pid=`pgrep keyboard_leds`

echo "Keyboard LEDs are switching!"
echo "Process ID: $pid"

kill -SIGUSR1  $pid