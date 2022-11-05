#!/bin/bash

file="$HOME/.config/conky/data/bin"
SIZE=$(du -sh $HOME/.local/share/Trash/files | awk '{ printf $1}');

echo "$SIZE""B" > "$file"


