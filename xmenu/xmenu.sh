#!/bin/sh

cat <<EOF | xmenu | sh &
Applications:
	IMG:./icons/firefox.png	Firefox		firefox
	IMG:./icons/brave.png	Brave		brave
	IMG:./icons/gimp.png	GIMP		gimp
	IMG:./icons/file.png	Ranger		st -e ranger
Terminal:
	IMG:./icons/terminal.jpeg	st
	IMG:./icons/terminal.jpeg	urxvt
	IMG:./icons/terminal.jpeg	xterm
Settings:
	IMG:./icons/settings.png	dwm		st -e vim $HOME/dwm/config.def.h
	IMG:./icons/settings.png	dmenu		st -e vim $HOME/dmenu/config.def.h
	IMG:./icons/settings.png	st		st -e vim $HOME/st/config.h
	IMG:./icons/settings.png	xmenu   	st -e vim $HOME/xmenu/xmenu.sh

Wallpaper:
	IMG:./icons/wallpaper.jpeg	Change Wallpaper	 feh -rz --bg-scale ~/Pictures/Wallpapers/*
Music
	IMG:./icons/music.jpeg		Play			mpc play
	IMG:./icons/music.jpeg		Pause			mpc toggle
	IMG:./icons/music.jpeg		Stop			mpc stop
	IMG:./icons/music.jpeg		Prev			mpc prev
	IMG:./icons/music.jpeg		Next			mpc next

Shutdown					[ \"$(printf \"No\\nYes\" | dmenu -i -nb darkred -sb red -sf white -nf gray -p \"Shutdown?\")\" = Yes ] && systemctl poweroff
Reboot						[ \"$(printf \"No\\nYes\" | dmenu -i -nb darkred -sb red -sf white -nf gray -p \"Reboot?\")\" = Yes ] && sudo -A reboot
Logout						[ \"$(printf \"No\\nYes\" | dmenu -i -nb darkred -sb red -sf white -nf gray -p \"Logout?\")\" = Yes ] && killall Xorg
EOF



