#!/bin/bash

read -p "Enter a file name to search in:  " file_name
read -p "Enter a word to look for: " target_word

if [[ -e $file_name ]]; then
	matches=$(grep -o "$target_word" $file_name | wc -l)
	echo "There are $matches entries in $file_name"
else
	echo "This file does not exist!"
fi;


