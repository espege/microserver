#!/bin/bash
 
str1=$(nordvpn status)

if [[ "$str1" =~ "Status: Disconnected" ]]; then
    echo "Nordvpn is not connected"
    nordvpn connect
else
    echo "Nordvpn is connected"
fi