#!/bin/bash

declare -A commands
commands[1]="date"
commands[2]="ls"
commands[3]="tree"

while true; do
	echo "Available commands: "
	for key in "${!commands[@]}"; do
		echo "$key: ${commands[$key]}"
	done

	read -p "Choose a command or enter q to quit: " input

	if [[ $input == "q" ]]; then
		break
	else
            cmd=${commands[$input]}
	    $cmd
	fi
done
	
