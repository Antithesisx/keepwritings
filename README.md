keepwritings
============

Never lose your writings again, and have quick access to all your writings all the time. Be it an email, an essay or a forum post. It has two uses:
- If the web browser crashes while you're in the middle of writing something in a web page's text field, your data is lost. Keepwritings prevents this by giving you quick access to an external editor, and copyting that text to the clipboard after you're done.
- The writing is also stored on your hard disk and a dmenu-based interface is provided for quick access. If you ever need access to something you've written in the past, you won't need to spend time browsing the web for that one post; you'll have a local copy -- much like how you keep all your sent emails in your Sent folder. With keepwritings, you can get back any of your writings instantly, simply by recalling a pattern that appears inside the text.

By default, keepwritings uses focuswriter as the editor, because it has a nice, distraction-free user interface. You can replace this by gvim or gedit or whatever you prefer.

### Usage

`keepwritings` will launch the editor. Just close it when you are done, and the text will be in your clipboard, ready to be pasted. `recall` will launch a dmenu presenting all your previous writings. One entry per line. You can filter them by date or content. After you've made a selection, the file containing that line (i.e. the whole writing) will be copied to your clipboard. Thus, you only need to recall a fraction of a writing to access it.

### Installation
#### The easy way
`git clone https://github.com/Antithesisx/keepwritings.git && sudo ./keepwritings/install.sh`

On a Debian-based system, the installer will take care of everything. On other systems, you'll just need to install the dependencies manually. The installer must be run as root in order to place the scripts in your PATH.

#### The hard way
If you don't want to entrust root privlidges to the script, or you want to change the configuration, just do

`git clone https://github.com/Antithesisx/keepwritings.git`

and edit install.sh before launching it. You can change the PATH or change the package manager (on non-Debian systems). If you want to store your writings in a different location, you'll need to edit the installer as well as the scripts. The editor can also be set in the keepwritings script.

### Dependencies
- focuswriter 
- suckless-tools 
- xclip
- xautomation (optional, if you want to automatically paste the writing.)
