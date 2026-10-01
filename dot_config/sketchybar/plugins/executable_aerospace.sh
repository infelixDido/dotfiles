#!/usr/bin/env bash

SID="$1"

if [ "$SID" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" \
    background.drawing=on \
    label.color=0xffc0caf5
else
  sketchybar --set "$NAME" \
    background.drawing=off \
    label.color=0xff565f89
fi
