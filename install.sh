#!/bin/bash

# Ask if ~/bin should be created.
while true
do
	read -p "Keepwritings needs to be installed in a directory that is in your PATH. By default, it uses ~/bin. If you are using bash (default settings), this script can create that directory for you and add it to the PATH. Would you like me to do that for you? [Y/n]

Yes = create ~/bin, add it to your PATH and install keepwritings there
No = set up an install directory manually (advanced users only)
" input1
	case $input1 in
		"" )	installdir=$HOME/bin/ ; mkdir -p $installdir ; echo "\$PATH=\$PATH:$installdir" >> ~/.bashrc ; break;;
		[Yy]* ) installdir=$HOME/bin/ ; mkdir -p $installdir ; echo "\$PATH=\$PATH:$installdir" >> ~/.bashrc ; break;;
		[Nn]* ) installdir=unset ; break;;
		* )	;;
	esac
done

if [[ $installdir = "unset" ]]; then
		read -p "Okay, I will not touch your configuration files. Please tell me the directory where keepwritings should be installed. Make sure that the directory exists, that it does not require root priviledges, and that it is in your PATH. $ " -e -i "$HOME/bin/" installdir
fi

# Place the scripts in the PATH.
cp keepwritings recall "$installdir"

# Create the directories necessary for the scripts to operate.
if [[ ! -d ~/.config/keepwritings ]]
	then mkdir -p ~/.config/keepwritings/history
fi


# Install scribe and revcontrol from the github.
git clone https://github.com/Antithesisx/scribe.git
cd scribe
chmod +x scribe
cp scribe "$installdir"
cd ..
git clone https://github.com/Antithesisx/Revcontrol.git
cd Revcontrol
chmod +x revcontrol
cp revcontrol "$installdir"

# Configure scribe
cd "$installdir"
nano scribe

# Notify the user of other dependencies they need to install.
error() {
echo "$(basename "$0"):" "error:" "$@" 1>&2
exit 1
}

depends() {
local d
for d
do
command -v "$d" >/dev/null || error "Please install the following dependency through your package manager:" "$d"
done
}

depends xclip dmenu xautomation inotify-tools
