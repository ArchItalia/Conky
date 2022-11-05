# Conky
![Untitled](https://user-images.githubusercontent.com/117321045/200119484-c0daa42d-6e26-4b0d-a085-86aa37c815b7.png)
#### Contributori della community ArchItalia
- Gianluca D'andrea
- Luca Ruggeri


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
- lm_sensor / sudo pacman -S lm_sensor / se assente 


#### Transparenza 
Per rendere transparente questa configurazione sara necessario cancellare linea 38 own_window_colour = '2b2a33', e impostare own_window_transparent = false, nel file conky.conf


#### Power 
Power e' uno script alpha per qualsiasi bug segnalare sul gruppo facebook grazie.

#### Temperatura hwmon CPU
in linea 59 impostare la propria configurazione:

- Ivy Bridge CPU ${hwmon 2 temp 1}°C
- Skylake CPU ${hwmon 0 temp 1}°C
- (possibly due to new kernel) on the same Skylake CPU I switched to: {hwmon 1 temp 1}°C

