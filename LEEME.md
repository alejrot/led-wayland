
# LEDS de teclado con Systemd y Wayland


Este servicio busca los LEDs de teclado desde su directorio de Wayland y fuerza su estado a encendido periódicamente. 

[Version en inglés - README.md](README.md#keyboard-leds-with-wayland-and-systemd)



## Descarga

Abre una terminal Bash y descarga el repositorio, copiando y pegando los comandos:

```bash
git clone https://github.com/alejrot/Led_Wayland.git
cd Led_Wayland
```
Ahora da permisos de ejecución a todas las rutinas:

```bash
sudo chmod +x keyboard_leds.sh
sudo chmod +x switching.sh  
sudo chmod +x install.sh
sudo chmod +x uninstall.sh 
``` 


## Cómo Instalar


Copia y pega los comandos en la terminal:

```bash
sudo ./install.sh
```

La conmutación de  los LEDs se realiza con la rutina local `./switching`:

```bash 
# carpeta de usuario
sudo ./switching.sh    
```
o con su copia en las carpetas del sistema:

```bash 
# carpeta del sistema
sudo /usr/local/bin/keyboard_switch.sh  
```

Ambas tareas exigen *permisos de administrador* para funcionar.

## Quitar contraseña

Para poder ejecutar este comando sin contraseña de *sudo*, primero crea un archivo en la carpeta  `/etc/sudoers.d/`:

```bash
sudo nano /etc/sudoers.d/leds_wayland 
```
y guarda en él el nuevo permiso *custom*:

```
ALL ALL=(ALL)  NOPASSWD: /usr/local/bin/keyboard_switch.sh
```

Ahora cualquier usuario del sistema podrá encender o apagar los LEDs a voluntad:

```bash 
sudo /usr/local/bin/keyboard_switch.sh  
```
Este comando puede agregarse a los atajos del teclado para mejor uso.



## Cómo Desinstalar

Ejecuta estas lineas en Bash para borrar todos los *scripts* del sistema:

```bash
sudo ./uninstall.sh
```


## Modificar parámetros

Los cambios se hacen desde el archivo local del servicio Systemd, llamamdo `keyboard_leds.service`:

```bash
# 'keyboard_leds.service'
ExecStart=/usr/bin/nice -n 20 /usr/local/bin/keyboard_leds.sh /sys/class/leds/  0.05
```

Este servicio llama al comando `nice`, el cual permite elegir la prioridad de la rutina.

Parámetros:

- `-n 19` elige la prioridad de la rutina, donde el valor `19` es la mínima;
- `/usr/local/bin/keyboard_leds.sh` es la copia de la rutina en el sistema.
- `/sys/class/leds/` es la ruta de los LEDs definida por Wayland;
- ` 0.05` es el tiempo en segundos entre repeticiones de la rutina.


Guardar cambios y reinstalar:

```bash
sudo ./install.sh
```




## Referencias:

[Turn on keyboard backlight/leds on wayland (xset led 3 alternative)](https://gist.github.com/ps1dr3x/b15c62eafb388ddf8bb7d3896d1a1cee)
