#!/bin/bash
MODE_NAME="ULTRAWIDE"
OUTPUT="HDMI-1"
CONNECTED_OUTPUT=$(xrandr --current | grep -i $OUTPUT | cut -f2 -d' ')

if [ "$CONNECTED_OUTPUT" == "connected" ];
then
# SET 2560x1080 50 HZ
xrandr --newmode "$MODE_NAME" 188.60  2560 2704 2976 3392  1080 1081 1084 1112  -HSync +Vsync
xrandr --addmode HDMI-1 "$MODE_NAME"
else
   echo "ULTRAWIDE IS NOT DETECTED !"
fi
