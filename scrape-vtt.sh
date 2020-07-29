#!/bin/bash
# Extended from https://unix.stackexchange.com/a/318989
fname=$1
sed 's/\r$//' "$fname"    |\
	grep -v -- "-->"          |\
	grep -v -- "NOTE " |\
	grep -E -v "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" |\
	grep -v "^$"              |\
	grep -E -v "^[0-9]+$"     |\
	sed 's/WEBVTT//'          |\
	tr '\n' ' '               |\
	tr -s ' '                 |\
	tr -d '\t'                |\
	sed 's/\\/\\\\/g'         |\
	sed 's/"/\\"/g' 
