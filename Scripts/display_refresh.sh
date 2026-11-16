#!/bin/bash

while true; do
  sleep 1800

  if system_profiler SPDisplaysDataType | grep -q "HDMI"; then
    /usr/bin/osascript -e 'tell application "System Events" to key code 144'
  fi
done
