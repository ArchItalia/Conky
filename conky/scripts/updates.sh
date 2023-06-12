#!/bin/bash

wifi=$( iwgetid -r)
date=$(date +"%a %e %b %Y - %H:%M:%S")

if [ "$wifi" = "" ]; then
       exit
else 
       u=$(expr "$(yay -Qqua | wc -l)" + "$(checkupdates 2>/dev/null | wc -l)")
       aur=$(yay -Qqua | wc -l)
       pacman=$(checkupdates 2>/dev/null | wc -l)
       echo "$date" > ~/.config/conky/data/lastcheck
       yay -Qqm > aur-pkglist
       if [ "$u" -eq 1 ]; then
           echo "$u" > ~/.config/conky/data/updates
           echo "" > ~/.config/conky/data/noupdates
           echo "$pacman" > ~/.config/conky/data/pacman
           echo "$aur" > ~/.config/conky/data/aur
           echo "" > ~/.config/conky/data/nopacman
           echo "" > ~/.config/conky/data/noaur
       elif [ "$u" -ge 1 ]; then
           echo "$u" > ~/.config/conky/data/updates
           echo "" > ~/.config/conky/data/noupdates
           echo "$pacman" > ~/.config/conky/data/pacman
           echo "$aur" > ~/.config/conky/data/aur
           echo "" > ~/.config/conky/data/nopacman
           echo "" > ~/.config/conky/data/noaur
       else   
           echo "0" > ~/.config/conky/data/noupdates
           echo "" > ~/.config/conky/data/updates
           echo "" > ~/.config/conky/data/pacman
           echo "" > ~/.config/conky/data/aur
           echo "0" > ~/.config/conky/data/nopacman
           echo "0" > ~/.config/conky/data/noaur
        fi
fi






