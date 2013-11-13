keepwritings
============

Never lose your writings again, and have quick access to all your writings all the time. Be it an email, an essay or a forum post. It has two uses:
- If the web browser crashes while you're in the middle of writing something in a web page's text field, your data is lost. Keepwritings prevents this by giving you quick access to an external editor, and copyting that text to the clipboard after you're done.
- The writing is also stored on your hard disk and a dmenu-based interface is provided for quick access. If you ever need access to something you've written in the past, you won't need to spend time browsing the web for that one post; you'll have a local copy -- much like how you keep all your sent emails in your Sent folder. With keepwritings, you can get back any of your writings instantly, simply by recalling a pattern that appears inside the text.

Instead of passing text input directly to a program, it gets procesed by keepwritings first, which will store the text on your hard drive. Yes, you can just launch a text editor manually, but then you'll have to worry about where to store the file, browse to that directory, create it if needed, etc. It's much more inviting to just start typing in a text field on a web page, making you vulnerable to losing your data again. The point of keepwritings is to provide quick access to an external editor, take care of where to store the data. In addition, it provides a tool to give quick access to all writings you've ever written.

There are few programs beside an email client that keep track of your writings. But we feed our important data not only to email clients. Sometimes a company's Contact page will provide a text form rather than an email address. When typing there, the data will not be stored, simply because it wasn't written in an email client. The UNIX philosophy is: do one thing, and do it well. Rather than relying on all different programs to store your important writings (and be damned if they don't), keepwritings stores them all centrally.

By default, keepwritings uses focuswriter as the editor, because it has a nice, distraction-free user interface. You can replace this by gvim or gedit or whatever you prefer.

### Usage

`keepwritings` will launch the editor. Just close it when you are done, and the text will be in your clipboard, ready to be pasted. `recall` will launch a dmenu presenting all your previous writings. One entry per line. You can filter them by date or content. After you've made a selection, the file containing that line (i.e. the whole writing) will be copied to your clipboard. For quick access, you might want to use a launcher. For most desktop environments, the shortcut for this is alt+F2.

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
