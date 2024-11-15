#! /bin/bash

echo "Installing LEDs control for Wayland"
echo "It assumes Systemd's service is enabled"

# stops tasks if they're already working
sudo systemctl stop keyboard_leds


# periodic task - pushes LED's status (to ON by default)
sudo cp keyboard_leds.sh /usr/local/bin/keyboard_leds.sh
sudo chmod +x /usr/local/bin/keyboard_leds.sh
# Systemd service - initializes routine after boot
sudo cp keyboard_leds.service /etc/systemd/system/keyboard_leds.service
# sudo chmod +x  /etc/systemd/system/keyboard_leds.service

# trigger task - sends signal to LED's manager
sudo cp switching.sh   /usr/local/bin/keyboard_switch.sh
sudo chmod +x  /usr/local/bin/keyboard_switch.sh


# enables auto-init 
sudo systemctl enable keyboard_leds
sudo systemctl daemon-reload
sudo systemctl start keyboard_leds

echo "Done!"
