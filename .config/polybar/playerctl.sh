#! /bin/bash

# Check if playerctl is installed
if ! command -v playerctl &> /dev/null; then
    echo "playerctl is not installed. Please install it using 'sudo apt install playerctl' (for Ubuntu/Debian) or appropriate command for your system."
    exit 1
fi

# Get the title metadata using playerctl
title=$(playerctl metadata title)

# Check if the title is empty (i.e., no media playing)
if [ -z "$title" ]; then
    echo "  No media playing."
else
    echo "  $title"
fi
