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


# Install scribe and revcontrol from the github
git clone https://github.com/Antithesisx/scribe.git
cd scribe
sudo cp scribe /usr/bin/
sudo chmod +x /usr/bin/scribe
cd ..
git clone https://github.com/Antithesisx/Revcontrol.git
cd Revcontrol
sudo cp revcontrol /usr/bin/
sudo chmod +x /usr/bin/revcontrol

# Install the other dependencies. For manual installation: just use your package manager to install xclip, dmenu, inotify-tools and xautomation.
error() {
echo "$(basename "$0"):" "error:" "$@" 1>&2
exit 1
}

depends() {
local d
for d
do
command -v "$d" >/dev/null || error "Missing dependency:" "$d"
done
}

depends xclip dmenu xautomation inotify-tools
