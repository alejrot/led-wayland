

# uninstalling old version
if [ -f /usr/local/bin/keyboard_leds.sh ]
then
    echo "Old file detected: /usr/local/bin/keyboard_leds.sh"
    echo "erasing file"
    sudo rm /usr/local/bin/keyboard_leds.sh
fi

if [ -f /usr/local/bin/keyboard_switch.sh ]
then
    echo "Old file detected: /usr/local/bin/keyboard_switch.sh"
    echo "erasing file"
    sudo rm /usr/local/bin/keyboard_switch.sh
fi

if [ -f /etc/systemd/system/keyboard_leds.service ]
then
    echo "Old file detected: /etc/systemd/system/keyboard_leds.service"
    echo "erasing file"
    sudo rm /etc/systemd/system/keyboard_leds.service
fi

if [ -f /etc/sudoers.d/leds_wayland ]
then
    echo "Old file detected: /etc/sudoers.d/leds_wayland "
    echo "erasing file"
    sudo rm /etc/sudoers.d/leds_wayland 
fi


