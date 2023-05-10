tell application "System Settings"
	activate
	reveal anchor "Wi-Fi" of pane id "com.apple.preference.network"
	delay 1
	my disconnectWifi()
	my toggleWifiOff()
	delay 1
	my toggleWifiOn()
	my connectWifi()
	-- quit
end tell

on disconnectWifi()
	tell application "System Events"
		tell process "System Preferences"
			try
				click button "Disconnect" of group 1 of window "Network"
			on error error_message number error_number
				
			end try
		end tell
	end tell
end disconnectWifi

on toggleWifiOff()
	tell application "System Events"
		tell process "System Preferences"
			try
				click button "Turn Wi-Fi Off" of group 1 of window "Network"
			on error error_message number error_number
				
			end try
		end tell
	end tell
end toggleWifiOff

on toggleWifiOn()
	tell application "System Events"
		tell process "System Preferences"
			try
				click button "Turn Wi-Fi On" of group 1 of window "Network"
			on error error_message number error_number
				
			end try
		end tell
	end tell
end toggleWifiOn

on connectWifi()
	tell application "System Events"
		tell process "System Preferences"
			try
				click button "Connect" of group 1 of window "Network"
			on error error_message number error_number
				click button "Disconnect" of group 1 of window "Network"
			end try
		end tell
	end tell
end connectWifi