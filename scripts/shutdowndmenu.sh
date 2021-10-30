#! /bin/bash
actions="
suspend: systemctl suspend
shutdown:  halt
reboot:  reboot
hibernate:  systemctl hibernate
logout:  killall X
new sed -i \"/^new/i\"(echo | dmenu -p \"Enter new name and action\")\" '$0'"
result=$(echo "$actions" | dmenu -l 10)
cmd=$(echo "$result" | cut -d' ' -f2-)
[ -n "$cmd" ] && eval setsid setsid "$cmd"
