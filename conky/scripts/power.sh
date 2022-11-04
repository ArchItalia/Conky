#!/bin/bash
# dependencies upower
#echo "$BAT""%"" $STATUS" > $url

url="$HOME/.config/conky/data/power"
BAT=$(upower -i $(upower -e | grep BAT) | grep -E percentage | xargs | cut -d' ' -f2|sed s/%//)
STATUS=$(upower -i $(upower -e | grep BAT) | grep -E state | xargs | cut -d' ' -f2|sed s/%//)


if  [  -z "$BAT"  ]; then
      echo "Alternating Current" > $url
else
      echo "$BAT""%"" $STATUS" > $url
fi
