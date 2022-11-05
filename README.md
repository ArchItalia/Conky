# Conky

![Screenshot from 2022-11-05 02-38-34](https://user-images.githubusercontent.com/117321045/200097466-838d4e2c-5bc2-43c3-8257-56d5a3c14ba3.png)


## Installazione
- installa conky con sudo pacman -S conky
- copia la cartella conky in ~/.config/
- Aprire il terminale e digitare chmod +X ~/.config/conky/scripts/*

## Autostart
crea il file conky.desktop e aggiungilo in ~/.config/autostart/ quindi effettua un logout e riaccedi.
configurazione del file conky.desktop
- [Desktop Entry]
- Type=Application
- Exec=conky --daemonize --pause=5
- Hidden=false
- NoDisplay=false
- Name=Conky


### Dipendenze di questa configurazione:

- nvidia-smi / sudo pacman -S nvidia [commentare con # la linea 57 conky.conf relativa a GPU nvidia in caso non abbiate questa scheda]
- pacman-contrib / sudo pacman -S pacman-contrib
- reflector / sudo pacman -S reflector / opzionale per mirrors e' possibile abilitare reflector.service per aggiornare i servers al boot vedi https://wiki.archlinux.org/title/Reflector
- upower / sudo pacman -S upower
- jq / sudo pacman -S jq
- otf-font-awesome / sudo pacman otf-font-awesome / queste sono le icone scelte potete modificare con le vostre se volete.
- Cantarell / font di sistema base
- lm_sensor / sudo pacman -S lm_sensor SOLO IN CASO non venga rilevata la temperatura della CPU con ERRORE can't open '/sys/class/hwmon/hwmon1/temp1_input


#### Transparenza 
Per rendere transparente questa configurazione sara necessario cancellare linea 38 own_window_colour = '2b2a33', e impostare own_window_transparent = false, nel file conky.conf


#### Power 
Power e' uno script alpha per qualsiasi bug segnalare sul gruppo facebook grazie.
