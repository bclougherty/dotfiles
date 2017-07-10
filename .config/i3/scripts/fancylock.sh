#!/usr/bin/env Dbash

tempbg='/tmp/screen.png'
icon="$HOME/.config/i3/lock.png"

/usr/bin/scrot "$tempbg"

/usr/bin/convert "$tempbg" -scale 10% -scale 1000% "$tempbg"

/usr/bin/convert "$tempbg" "$icon" -gravity center -composite -matte "$tempbg"

#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

/usr/bin/i3lock -i "$tempbg"

/usr/bin/rm "$tempbg"
