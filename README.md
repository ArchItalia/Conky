# Conky
- ![Screenshot from 2022-11-04 18-16-45](https://user-images.githubusercontent.com/117321045/200047237-644f0fd3-7fcc-4bbb-af2a-d4623f34c9b6.png)
- ![Screenshot from 2022-11-04 18-37-09](https://user-images.githubusercontent.com/117321045/200050584-699844fb-6f66-478b-a63b-1f10e8de74c1.png)


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
- jq / sudo pacman -S jq
- otf-font-awesome / sudo pacman otf-font-awesome / queste sono le icone scelte potete modificare con le vostre se volete.
- Cantarell / font di sistema base

#### Life 
per configurare Life il conteggio da quando vive il sistema basta seguire l'indicazione all'interno dello script life.sh si tratta semplicemente di inserire la data da quando e' installato il sistema anno/mese/giorno.

#### Power 
Power e' uno script alpha per qualsiasi bug segnalare sul gruppo facebook grazie.
