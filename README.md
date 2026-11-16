# Display Refresh

This project contains a small macOS shell script and LaunchAgent plist intended to keep an external monitor from black screening.

The script runs continuously, waits 30 minutes between checks, and looks for an HDMI-connected display. When one is detected, it sends key code `144` through AppleScript to trigger a display-related refresh action.

The LaunchAgent is included so the script can start automatically and stay running after login.

## Files

- `Scripts/display_refresh.sh`: the background loop that checks for an HDMI display and triggers the refresh action.
- `Library/LaunchAgents/com.display.refresh.plist`: the macOS LaunchAgent definition that runs the script automatically.

## Purpose

The purpose of this setup is to reduce or prevent an external monitor from going black by periodically nudging macOS to refresh the display connection.
