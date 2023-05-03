#!/bin/bash

# Arbitrary but unique message id
msgId=$RANDOM

xbacklight "$@" > /dev/null

# Query amixer for the current brightness and whether or not the speaker is muted
full="$(xbacklight -get)"
declare -i brightness="$(cut -d "." -f1 <<< $full)"

dunstify -a "changeBrightness" -u low -i audio-brightness-high -r "$msgId" \
-h int:value:"$brightness" "Brightness: ${brightness}%"

canberra-gtk-play -i audio-volume-change -d "changeBrightness"
