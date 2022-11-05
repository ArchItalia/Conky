#!/bin/bash
# author Jonathan Sanfilippo


file="$HOME/.config/conky/data/mirrors"
mirrorlist=$(cat /etc/pacman.d/mirrorlist | wc -l );   
diff=$( expr $mirrorlist - 10);   

echo "$diff" > "$file" 


