#! /bin/bash

echo "Installing LEDs control for Wayland"

# stops task if they're already working
echo "It assumes Systemd's service is enabled"
sudo systemctl stop keyboard_leds

# copy repository to 'opt' system directory
echo "Copying repository to /opt folder"
# cd ..
# sudo cp -r led-wayland/ /opt
if [ -d /opt/led-wayland ]
then
    echo "Folder exists already"
else
    echo "Creating folder"
    mkdir /opt/led-wayland
fi

sudo cp * /opt/led-wayland
echo "Repository copied"

# periodic task - pushes LED's status (to ON by default)
sudo chmod +x /opt/led-wayland/keyboard_leds.sh
# trigger task - sends signal to LED's manager
sudo chmod +x /opt/led-wayland/switching.sh
# uninstall old version if exists
sudo chmod +x /opt/led-wayland/erasing_old.sh
/opt/led-wayland/erasing_old.sh

# Systemd service - initializes routine after boot
sudo cp /opt/led-wayland/keyboard_leds.service /etc/systemd/system/keyboard_leds.service

# enable permissions to users for switch execution  
echo "ALL ALL=(ALL)  NOPASSWD: /opt/led-wayland/switching.sh"  > /etc/sudoers.d/leds_wayland 
echo "ALL ALL=(ALL)  NOPASSWD: /opt/led-wayland/keyboard_leds.sh"  > /etc/sudoers.d/led_wayland 


# enables auto-init 
sudo systemctl enable keyboard_leds
sudo systemctl daemon-reload
sudo systemctl start keyboard_leds


echo "Done!"
echo ""
echo "Now the LEDs should turn on automatically"
echo "To turn off LEDs or turn on again execute:"   
echo "sudo /opt/led-wayland/switching.sh"