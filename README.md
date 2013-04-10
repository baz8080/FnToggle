FnToggle
========

Script to toggle whether to use the F keys as standard F keys or as brightness / media etc.

I have only tested this on my machine running OS X 10.8.3.

You can run this script easily by:

1. Adding a menubar item to run scripts
  * Open Finder.app
  * Click cmd + shift + g
  * Type '/System/Library/CoreServices/Menu Extras'
  * Double-click 'Script Menu.menu'
2. Compile and install the script
  * Open Terminal.app
  * ```cd /path/to/downloaded/script/
  * Compile: ```osacompile -o Toggle\ Fn\ Keys.scpt Toggle\ Fn\ Keys.applescript```
  * Install: ```cp /path/to/downloaded/script/Toggle\ Fn\ Keys.scpt ~/Library/Scripts/```
3. Run the script
  * Click the new scripting icon in the menubar
  * You should see 'Toggle Fn Keys' at the bottom
