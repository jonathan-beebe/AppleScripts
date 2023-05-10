tell application "System Settings"
	activate
	tell application "System Events"
		tell appearance preferences
			set dark mode to not dark mode
		end tell
	end tell
end tell

tell application "System Settings" to quit