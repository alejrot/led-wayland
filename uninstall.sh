#! /bin/bash


echo "Uninstalling LED's routines and services..."

# stops services and routines
sudo systemctl stop keyboard_leds
pid=`pgrep keyboard_leds`
kill -SIGKILL  $pid


# removing all routines 
sudo rm -r /opt/led-wayland/


# removing Systemd servcie
if [ -f /etc/systemd/system/keyboard_leds.service ]
then
    sudo rm /etc/systemd/system/keyboard_leds.service
fi


# removing user permissions
if [ -f /etc/sudoers.d/leds_wayland ]
then
    sudo rm /etc/sudoers.d/leds_wayland 
fi

# reloading services - forcing initialization
sudo systemctl daemon-reload

echo "Done!"
echo "LEDs routines uninstalled"