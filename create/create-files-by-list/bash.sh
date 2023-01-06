#!/bin/bash

usage() {
	echo "Usage: $0 [-f create files] [-d create directories]" 1>&2
	exit 1
}

opt=0

while getopts "fd" OPTION; do
	case "$OPTION" in
	f)
		opt=1
		;;
	d)
		opt=2
		;;
	*)
		usage
		exit 1
		;;
	esac
done

if [ "$opt" -eq 0 ]; then
	usage
	exit 1
fi

while read -r line; do
	if [[ $line =~ ^[0-9]. ]]; then
		name=$(echo "$line" | cut -d " " -f2 | sed -r 's/[/]/-/g' | tr '[:upper:]' '[:lower:]')

		if [ "$opt" -eq 1 ]; then
			if [ -z "$3" ]; then
				touch "$name"
			else
				touch "$name"."$3"
			fi
		else
			mkdir "$name"
		fi
	fi
done <"$2"

if [ "$opt" -eq 1 ]; then
	echo "Files created!!! :D"
else
	echo "Directories created!!! :D"
fi
