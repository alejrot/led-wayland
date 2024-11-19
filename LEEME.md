
# LEDS de teclado con Systemd y Wayland


Este servicio busca los LEDs de teclado desde su directorio de Wayland y obliga a encenderlos periódicamente. 

[Version en inglés - README.md](README.md#keyboard-leds-with-wayland-and-systemd)



## Descarga

Abre una terminal Bash y descarga el repositorio, copiando y pegando los comandos:

```bash
git clone https://github.com/alejrot/Led_Wayland.git
cd Led_Wayland
```
Ahora da permisos de ejecución a las rutinas:

```bash
sudo chmod +x install.sh
sudo chmod +x uninstall.sh 
``` 


## Cómo Instalar

Copia y pega los comandos en la terminal:

```bash
sudo ./install.sh
```


## Conmutar LEDs

Para encender o apagar los LEDs ejecutar:

```bash 
sudo /usr/local/bin/keyboard_switch.sh  
```

No se requieren permisos de `sudo`.
Este comando puede agregarse a los atajos del teclado para mejor uso.


## Cómo Desinstalar

Ejecuta estas lineas en Bash para borrar todos los *scripts* del sistema:

```bash
sudo ./uninstall.sh
```


## Referencias:

[Turn on keyboard backlight/leds on wayland (xset led 3 alternative)](https://gist.github.com/ps1dr3x/b15c62eafb388ddf8bb7d3896d1a1cee)
