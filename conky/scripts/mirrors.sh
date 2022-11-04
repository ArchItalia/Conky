#!/bin/bash
# author Jonathan Sanfilippo


url="$HOME/.config/conky/data/mirrors"
SRV=$(rankmirrors -t   /etc/pacman.d/mirrorlist | wc -l );   
Srv=$( expr $SRV - 3);   

echo  $Srv > $url
