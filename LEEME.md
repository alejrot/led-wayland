
# LEDS traseros de teclado - con Systemd y Wayland


Este servicio busca los Leds traseros del teclado desde su directorio de Wayland y obliga a encenderlos periódicamente. 

[Version en inglés - README.md](README.md)



## Descarga

Abre una terminal Bash y descarga el repositorio, copiando y pegando los comandos:

```bash
git clone https://github.com/alejrot/led-wayland.git
cd led-wayland
```

o simplemente descarga el repositorio como archivo .zip y extráelo.

## Cómo Instalar

Copia y pega los comandos en una terminal
dentro de la carpeta del proyecto:

```bash
sudo chmod +x install.sh
sudo ./install.sh
```


## Conmutar LEDs

Para encender o apagar los LEDs ejecutar:

```bash 
sudo /opt/led-wayland/switching.sh  
```

No se requieren permisos de `sudo` para esto.
Este comando puede agregarse a los atajos del teclado para mejor uso.


## Cómo Desinstalar

Ejecuta estas lineas en Bash para borrar todos los *scripts* del sistema:

```bash
sudo chmod +x uninstall.sh 
sudo ./uninstall.sh
```


## Referencias:

[Turn on keyboard backlight/leds on wayland (xset led 3 alternative)](https://gist.github.com/ps1dr3x/b15c62eafb388ddf8bb7d3896d1a1cee)
