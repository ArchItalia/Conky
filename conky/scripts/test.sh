#!/bin/bash

url="https://www.iqair.com/uk/england/birmingham"
url2="https://www.bbc.com/weather/warnings/weather"

x=$(lynx -dump "$url" | grep "Humidity" | cut -d " " -f 8-)
y=$(lynx -dump "$url" | grep "Wind" | cut -d " " -f 11-)
z=$(lynx -dump "$url2" | grep "warning" | sed -e '1p' -e '/youpattern/!d')
z2=$(lynx -dump "$url2" | grep "Starts" | sed -e '1p' -e '/youpattern/!d')
z3=$(lynx -dump "$url2" | grep "Issued at:" | sed -e '1p' -e '/youpattern/!d')



echo "$x" > ~/.config/conky/data/humidity
echo "$y" > ~/.config/conky/data/wind
echo "$z" > ~/.config/conky/data/warning
echo "$z2" >> ~/.config/conky/data/warning
echo " - $z3" >> ~/.config/conky/data/warning



