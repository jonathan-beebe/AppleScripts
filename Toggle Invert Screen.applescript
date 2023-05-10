tell application "System Settings" to reveal anchor "Seeing_Display" of pane id "com.apple.preference.universalaccess"
tell application "System Settings"
	activate
	tell application "System Events" to tell process "System Preferences"
		tell window "Accessibility"
			click checkbox "Invert colors" of group 1
		end tell
	end tell
end tell

tell application "System Settings" to quit