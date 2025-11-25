#!/usr/bin/env fish

set choice (echo -e "Shutdown\nReboot\nSuspend\nCancel" | walker --dmenu -p "Power Button Pressed")

switch $choice
    case "Shutdown"
        systemctl poweroff
    case "Reboot"
        systemctl reboot
    case "Suspend"
        systemctl suspend
    case "*"
        # Cancel or empty selection
end
