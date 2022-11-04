# Conky
![Screenshot from 2022-11-04 18-16-45](https://user-images.githubusercontent.com/117321045/200047237-644f0fd3-7fcc-4bbb-af2a-d4623f34c9b6.png)

## Installazione
installa conky con sudo pacman -S conky
copia la cartella conky in ~/.config/

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

- pacman-contrib / sudo pacman -S pacman-contrib
- rankmirrors / git clone https://aur.archlinux.org/rankmirrors.git / cd rankmirrors / makepkg -si
- upower / sudo pacman -S upower
-jq / sudo pacman -S jq
