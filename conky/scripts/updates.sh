#!/bin/bash


url="$HOME/.config/conky/data/updates"
Check=$(checkupdates 2>/dev/null | wc -l)

#Check
if [ "$Check" -eq 1 ]; then
             echo "$Check Update" > "$url"
elif [ "$Check" -ge 1 ]; then
             echo "$Check Updates" > "$url"
else
           echo "System Updated" > "$url"
fi

 
