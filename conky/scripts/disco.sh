#!/bin/bash
# author Jonathan Sanfilippo


EFIsize=$(df -h /boot | grep M | awk '{printf $2}' | cut --complement -c 1-4)
EFI=$(du -sh /boot | awk '{ printf $1}')
Homesize=$(df -h /home | grep G | awk '{printf $2}')
Home=$(du -sh /home | awk '{ printf $1}')


echo "$EFI" > ~/.config/conky/data/efi
echo "$EFIsize" > ~/.config/conky/data/efisize
echo "$Home" > ~/.config/conky/data/home
echo "$Homesize" > ~/.config/conky/data/homesize

