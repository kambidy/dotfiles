#!/bin/bash

# Get the current volume and mute status
volume=$(pamixer --get-volume)
is_mute=$(pamixer --get-mute)

# Display volume or mute status
if [ "$is_mute" = "true" ]; then
  echo "🔇 Muted"
else
  echo "🔊 $volume%"
fi

# Set background color based on mute status
if [ "$is_mute" = "true" ]; then
  echo "#FF0000" # Red color when muted
else
  echo "#00FF00" # Green color when unmuted
fi
