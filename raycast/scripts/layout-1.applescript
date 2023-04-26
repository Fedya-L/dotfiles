#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Layout 1
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

tell application "Finder"
	set screenResolution to bounds of window of desktop
end tell

set screenWidth to item 3 of screenResolution
set screenHeight to item 4 of screenResolution


tell application "iTerm"
	activate
	reopen
	set the bounds of the first window to {screenWidth / 2, screenHeight / 2, screenWidth, screenHeight}
end tell


tell application "Google Chrome"
	activate
	reopen
	set the bounds of the first window to {screenWidth / 2, 0, screenWidth, screenHeight / 2}
end tell

tell application "Visual Studio Code"
	activate
	reopen
end tell

tell application "System Events" to tell process "Code"
	tell window 1
		set size to {screenWidth / 2, screenHeight}
		set position to {0, 0}
	end tell
end tell