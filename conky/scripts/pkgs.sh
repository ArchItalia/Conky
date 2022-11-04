#!/bin/bash
# author Jonathan Sanfilippo

PKGS=$(pacman -Q | wc -l)
echo "$PKGS"


