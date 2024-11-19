
# Keyboard LEDs with Wayland and Systemd 


This service searchs the keyboard LEDS from their Wayland folder and forces to turn them on periodically.


[Spanish version - LEEME.md](LEEME.md#leds-de-teclado-con-systemd-y-wayland)


## Download

Open a Bash terminal and download the repository, copying and pasting these commands:

```bash
git clone https://github.com/alejrot/Led_Wayland.git
cd Led_Wayland
```

Now give excecution permissions to routines:

```bash
sudo chmod +x install.sh
sudo chmod +x uninstall.sh 
``` 


## How to Install


Copy and paste these commands in terminal:

```bash
sudo ./install.sh
```

## Switching LEDs
 
To turn on or turn off LEDS execute:

```bash 
sudo /usr/local/bin/keyboard_switch.sh  
```

It doesn't require `sudo` password.
This command can be added to keyboard shortcuts for better use.


## How to Uninstall

Execute this line codes in Bash to erase all the system's *scripts*:

```bash
sudo ./uninstall.sh
```


## References:

[Turn on keyboard backlight/leds on wayland (xset led 3 alternative)](https://gist.github.com/ps1dr3x/b15c62eafb388ddf8bb7d3896d1a1cee)
