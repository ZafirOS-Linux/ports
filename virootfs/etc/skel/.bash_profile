# PATH
export PATH="$HOME/.local/bin:/sbin:/usr/sbin:$PATH"

# XDG_RUNTIME_DIR 
unset XDG_RUNTIME_DIR
export XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)

# Autorun X11/Wayland session in TTY1
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
zfr isinstalled seatd && exec seatd-launch dbus-run-session sway
zfr isinstalled xinit && exec startx                                                                           
fi

