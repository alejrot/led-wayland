
# Keyboard LEDs with Wayland and Systemd 


This service searchs the keyboard LEDS from their Wayland folder and forces to turn them periodically.


[Spanish version - LEEME.md](LEEME.md#leds-de-teclado-con-systemd-y-wayland)


## Download

Open a Bash terminal and download the repository, copying and pasting these commands:

```bash
git clone https://github.com/alejrot/Led_Wayland.git
cd Led_Wayland
```

Now give excecution permissions to all routines:

```bash
sudo chmod +x keyboard_leds.sh
sudo chmod +x switching.sh  
sudo chmod +x install.sh
sudo chmod +x uninstall.sh 
``` 



## How to Install


Copy and paste these commands in terminal:

```bash
sudo ./install.sh
```

The LEDs switching is made with the local routine `./switching`:

```bash 
# carpeta de usuario
sudo ./switching.sh    
```

or with its copy in system's folder:

```bash 
# carpeta del sistema
sudo /usr/local/bin/keyboard_switch.sh  
```

By the moment both routines requires *root permissions* to work.


## Remove password


To be able to execute this command without *sudo* password, first create a file in folder `/etc/sudoers.d/`:

```bash
sudo nano /etc/sudoers.d/leds_wayland 
```

and save in it the new *custom* permission:

```
ALL ALL=(ALL)  NOPASSWD: /usr/local/bin/keyboard_switch.sh
```
 
Now every system user will turn on or turn off LEDS freely:

```bash 
sudo /usr/local/bin/keyboard_switch.sh  
```
This command can be added to keyboard shortcuts for better use


## How to Uninstall

Execute this line codes in Bash to erase all the system's *scripts*:

```bash
sudo ./uninstall.sh
```


## Modify parameters

the changes are made from Systemd's local file, called `keyboard_leds.service`:

```bash
# 'keyboard_leds.service'
ExecStart=/usr/bin/nice -n 20 /usr/local/bin/keyboard_leds.sh /sys/class/leds/  0.05
```

This service calls `nice` command, which lets choose routine's priority.


Parameters:

- `-n 19` choose routine's priority, where value `19` is the minimum;
- `/usr/local/bin/keyboard_leds.sh` is the routine's copy in system.
- `/sys/class/leds/` is the LEDs path defined by Wayland;
- ` 0.05` is the time in seconds between routine repetitions.


Guardar cambios y reinstalar:

```bash
sudo ./install.sh
```



## References:

[Turn on keyboard backlight/leds on wayland (xset led 3 alternative)](https://gist.github.com/ps1dr3x/b15c62eafb388ddf8bb7d3896d1a1cee)
