#!/bin/bash

choice=$(echo -e "Logout\nShutdown\nRestart\nCancel" | rofi -dmenu -p "Choose an action:")

case "$choice" in
    "Logout")
        awesome-client 'awesome.quit()'
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
    "Restart")
        systemctl reboot
        ;;
    "Cancel")
        ;;
esac
