#!/bin/bash

# Part 1: Check/Create ~/.bashrc
if [ ! -f ~/.bashrc ]; then
    echo "Creating new .bashrc..."
    touch ~/.bashrc
    echo "# Created by setup script on $(date)" >> ~/.bashrc
fi

# Part 2: Source personal configuration
CONFIG_FILE=${1:-~/.bashrc.qchen}  # Use argument or default path

if [ -f "$CONFIG_FILE" ]; then
    echo "Sourcing $CONFIG_FILE..."
    echo -e "\n# Personal configuration\nsource $CONFIG_FILE" >> ~/.bashrc
    source ~/.bashrc  # Apply changes immediately
else
    echo "Error: Config file $CONFIG_FILE not found!" >&2
    exit 1
fi
