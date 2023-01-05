#!/bin/bash

while read -r line; do
	if [[ $line =~ ^[0-9]. ]]; then
		directory=$(echo "$line" | cut -d " " -f2)
		if [ -z "$1" ]; then
			touch "$directory"
		else
			touch "$directory"."$1"
		fi
	fi
done <test.txt
