#!/bin/bash

theme=$1
weather_code=$2
cp -r /$HOME/.config/conky/icons/${theme}/${weather_code}.svg ~/.cache/weather-icon.svg
