#!/bin/bash

while read -r line; do
	if [[ $line =~ ^[0-9]. ]]; then
		directory=$(echo "$line" | cut -d " " -f2)
		mkdir "$directory"
	fi
done <test.txt
