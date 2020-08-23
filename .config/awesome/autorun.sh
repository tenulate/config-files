#!/usr/bin/env bash

function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

run setxkbmap -option ctrl:swapcaps
run xmodmap ~/.Xmodmap
. ~/script/monitor.sh
