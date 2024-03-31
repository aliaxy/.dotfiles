#!/usr/bin/env bash
rofi \
	-show $1 \
	-scroll-method 0 \
	-drun-match-fields all \
	-no-drun-show-actions \
	-theme ~/.config/rofi/launcher.rasi
