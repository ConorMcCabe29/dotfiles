#!/bin/bash

kitty -e bash -c "
updates=\$(checkupdates 2>/dev/null | wc -l)

if [ \$updates -eq 0 ]; then
    echo 'System is already up to date.'
else
    echo 'Updating system...'
    sudo pacman -Syu
fi

echo
echo 'Press Enter to close...'
read
"

# Refresh Waybar after closing terminal
pkill -RTMIN+8 waybar