keepwritings
============

Never lose your writings again. Keepwritings is a script that helps you with organizing and accessing text files. Instead of opening a file with your default text editor, use `keepwritings file.txt`. Keepwritings will launch your text editor of choice, but in addition, it will take care of a couple of things:
- Revision control. It uses [scribe](https://github.com/Antithesisx/scribe) to backup to a new file each time you save it.
- Organization. Rather than cluttering your working directory with these backups, the file will be stored in a preset location (by default ~/.config/keepwritings), and your argument (i.e. file.txt) will be a hardlink to the most recent version.
- Quick access. A program called Recall is provided for this purpose. It pipes the contents of all your writings to dmenu, and, upon making a selection, opens the appropriate file in a text editor so you can continue working on it. This way, you can access a file without even remembering its name or path; all you need is a word or phrase that appears inside the file.
- Quick access. Because the files are stored in a standard location, and file.txt in your working directory is only a hardlink to it, you might as well omit the argument. This means you can quickly take a note by just typing `keepwritings`. Instead of browsing filesystem hierarchies, you can completely rely on Recall to find your file back.

Practical uses:
- Essays and other important writings that you definitely can't lose, and of which you may sometimes need to dig up an earlier version.
- Forum posts and other web forms. Instead of writing the text in the provided form and lose it out of sight after submitting it, use keepwritings and copy/paste the text after it's done. Do you need to send something important to a company and does their contact page provide a form rather than an email address? No problem, keepwritings will take care of it. Think of it as an outbox that works for things other than email as well.
- Quick notetaking / todo lists. You don't need to bother thinking about where to store your note, since it's nothing major, but you also won't lose oversight like with those desktop sticky note programs.
- Building a scrapbook. Find an interesting article or inspiring quote on the Internet? Just open keepwritings and paste it there.
- Instant access to anything you've ever read or written, just by recalling a few words from it.

### Usage

`keepwritings` will launch the editor. Each time you save it, a new copy will be created. `recall` will launch a dmenu presenting all your previous writings, one entry per line. You can filter them by date or content. After you've made a selection, the file containing that line will be opened in your text editor of choice.

The point of keepwritings is that you have quick access to it. For this reason, I recommend binding a keyboard shortcut to it. There are lightweight, universal tools like xbindkeys, but if you're using a Desktop Environment, chances are there's already an option for it.

### Installation
#### The easy way

`git clone https://github.com/Antithesisx/keepwritings.git ; cd keepwritings ; ./install.sh`

It will run an interactive installer that will do most things for you. You can check out the script if you don't trust it.

### Dependencies
- [scribe](https://github.com/Antithesisx/scribe) 
- suckless-tools (or just dmenu)
- xclip (optional, if you want to automatically copy a writing to the clipboard after saving it.) 
