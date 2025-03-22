
# Backlight Keyboard LEDs - with Wayland and Systemd 


This service searchs the keyboard backlight Leds 
from their Wayland folder and forces them
to turn on periodically.

[Spanish version - LEEME.md](LEEME.md)


## Download

Open a Bash terminal and download the repository, copying and pasting these commands:

```bash
git clone https://github.com/alejrot/led-wayland.git
cd led-wayland
```

or simply download the repository as .zip file and extract it.

## How to Install


Copy and paste these commands in terminal
inside the folders project:

```bash
sudo chmod +x install.sh
sudo ./install.sh
```

## Switching LEDs
 
To turn on or turn off LEDS execute:

```bash 
sudo /opt/led-wayland/switching.sh  
```

It doesn't require `sudo` password.
This command can be added to keyboard shortcuts for better use.


## How to Uninstall

Execute this line codes in Bash to erase
system folder and config files:

```bash
sudo chmod +x uninstall.sh 
sudo ./uninstall.sh
```


## References:

[Turn on keyboard backlight/leds on wayland (xset led 3 alternative)](https://gist.github.com/ps1dr3x/b15c62eafb388ddf8bb7d3896d1a1cee)
