#!/bin/bash

# Define the source directory
CONFIG_DIR="/home/$USER/.config"

# List of directories to copy
FILES=("nvim" "tmux" "bash")

# Loop through each item in FILES array and copy them to the current directory
for FILE in "${FILES[@]}"; do
    # Check if the directory or file exists before copying
    if [ -d "$CONFIG_DIR/$FILE" ] || [ -f "$CONFIG_DIR/$FILE" ]; then
        cp -r "$CONFIG_DIR/$FILE" .
        echo "Copied $CONFIG_DIR/$FILE to current directory."
    else
        echo "Warning: $CONFIG_DIR/$FILE does not exist, skipping."
    fi
done

