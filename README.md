keepwritings
============

Never lose your writings again, and have quick access to all your writings all the time. Be it an email, an essay or a forum post.

### Informal but simple explanation

Basically, I didn't like how only email clients keep a Sent folder and not, say, your web browser. I've lost way too many writings I've typed out in web forms, and some of them were very important. So I've decided to utilize the UNIX philosophy. Keepwritings is a program that will launch a text editor so it can take your input, then store that writing inside ~/.config/keepwritings/history/[current date / time].txt (or any other directory you choose), then copy the contents of that file to your clipboard.

Recall is a program that will look inside all writings inside that directory, take all lines of all those files, and pipe them to dmenu. When you select a line, it takes the content of the appropriate file and copy it to your clipboard. In other words: you have instant access to the contents of anything you've ever written, simply by recalling a few words that appeared inside it. It also prepends the dates, so if you only remember when it was written, that should also be enough.

The idea is that, instead of typing something directly in a form provided by a program, you type it in the text editor provided by the script first, let it take care of storing and organizing it, and then you paste it to the field where you wanted to type it in the first place. For example, I'm using it write now to type this post, because I might want to repost this. You can also use it simply to quickly take a note of something and you don't want to think about where you're going to store the file.

By default, keepwritings uses focuswriter as the editor, because it has a nice, distraction-free user interface. You can replace this by gvim or gedit or whatever you prefer.

### Motivation

There are few programs beside an email client that keep track of your writings. But we feed our important data not only to email clients. Sometimes a company's Contact page will provide a text form rather than an email address. When typing there, the data will not be stored, simply because it wasn't written in an email client. The UNIX philosophy is: do one thing, and do it well. Rather than relying on all different programs to store your important writings (if they do so at all), keepwritings stores them all centrally.

### Usage

`keepwritings` will launch the editor. Just close it when you are done, and the text will be in your clipboard, ready to be pasted. `recall` will launch a dmenu presenting all your previous writings. One entry per line. You can filter them by date or content. After you've made a selection, the file containing that line (i.e. the whole writing) will be copied to your clipboard. For quick access, you might want to use a launcher. For most desktop environments, the shortcut for this is alt+F2.

### Installation
#### The easy way
`git clone https://github.com/Antithesisx/keepwritings.git && sudo ./keepwritings/install.sh`

On a Debian-based system, the installer will take care of everything. On other systems, you'll just need to install the dependencies manually. The installer must be run as root in order to place the scripts in your PATH.

#### The hard way
If you don't want to entrust root privlidges to the script, or you want to change the configuration, just do

`git clone https://github.com/Antithesisx/keepwritings.git`

and edit install.sh before launching it. Basically, the installation instructions are inside that script.

You can change the PATH or change the package manager (on non-Debian systems). If you want to store your writings in a different location, you'll need to edit the installer as well as the scripts. The editor can also be set in the keepwritings script.

### Dependencies
- focuswriter 
- dmenu
- xclip
- xautomation (optional, if you want to automatically paste the writing.)
