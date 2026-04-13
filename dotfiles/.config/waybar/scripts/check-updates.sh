#!/bin/bash

updates=$(checkupdates 2>/dev/null | wc -l)

if [ "$updates" -eq 0 ]; then
    echo '{"text": "✔", "class": "updated"}'
else
    echo "{\"text\": \" $updates\", \"class\": \"updates\"}"
fi

pkill -RTMIN+8 waybar