#!/bin/bash

string=$1
if [ "$1" == "vol" ]; then
	mute=$(amixer get Master | grep -oE '\[(on|off)\]' | head -1 | tr -d '[]')
	if [[ "$mute" == "off" ]]; then
		# 静音状态
		notify-send -a "Volume" "Volume Mute!" -i /usr/share/icons/Papirus/48x48/status/notification-audio-volume-muted.svg -u critical -t 1000
		bash ~/.config/dunst/scripts/sound-normal.sh
	else
		# 非静音状态
		volume=$(amixer get Master | grep -o -E '[0-9]{1,3}%' | head -1 | cut -d'%' -f1)
		notify-send -a "Volume" -i /usr/share/icons/Papirus/48x48/status/notification-audio-volume-high.svg -h int:value:${volume} "${volume}%" -t 500
		bash ~/.config/dunst/scripts/sound-normal.sh
	fi
elif [ "$1" == "backlight" ]; then
	light=$(light | grep -oE '[0-9]+' | head -1)
	notify-send -a "Backlight" -i /usr/share/icons/Papirus/48x48/status/notification-display-brightness-full.svg -h int:value:$(light) "${light}%" -t 500
	bash ~/.config/dunst/scripts/sound-normal.sh
else
	echo "无效指令"
fi
