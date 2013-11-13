#!/bin/bash

# Exit if the script is not run as root.
if (( EUID != 0 )); then
    echo "You must be root to install keepwritings." 1>&2
    exit 1
fi

# Place the scripts in the PATH.
cp keepwritings recall /usr/local/bin

# Create the directories necessary for the scripts to operate.
if [[ ! -d ~/.config/keepwritings ]]
	then mkdir -p ~/.config/keepwritings/history
fi

# Install the dependencies.
apt-get install -y focuswriter suckless-tools xclip xautomation
