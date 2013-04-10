-- Script to toggle whether to use the F keys as standard F keys or as brightness / media etc. 
-- Version 0.1
-- This works with OS X 10.8.3, I can't guarantee it'll work with anything else.
-- Feel free to hack away.

-- Taken from http://www.macosxautomation.com/applescript/uiscripting/
on GUIScripting_status()
	-- check to see if assistive devices is enabled
	tell application "System Events"
		set UI_enabled to UI elements enabled
	end tell
	if UI_enabled is false then
		tell application "System Preferences"
			activate
			set current pane to pane id "com.apple.preference.universalaccess"
			display dialog "This script utilizes the built-in Graphic User Interface Scripting architecture of Mac OS x which is currently disabled." & return & return & "You can activate GUI Scripting by selecting the checkbox \"Enable access for assistive devices\" in the Universal Access preference pane." with icon 1 buttons {"Cancel"} default button 1
		end tell
	end if
end GUIScripting_status

GUIScripting_status()

tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.keyboard"
end tell

tell application "System Events"
	tell process "System Preferences"
		click checkbox "Use all F1, F2, etc. keys as standard function keys" of tab group 1 of window "Keyboard"
	end tell
end tell

tell application "System Preferences" to quit