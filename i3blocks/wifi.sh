#!/bin/bash

# Get the SSID of the connected Wi-Fi network
ssid=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)

# Check if connected and print the SSID or a message if disconnected
if [ -n "$ssid" ]; then
  echo "Wi-Fi: $ssid"
else
  echo "Wi-Fi: Disconnected"
fi
