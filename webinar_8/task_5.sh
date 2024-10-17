#!/bin/bash

files=(*)

for file in ${files[@]}; do
	echo "$file"
done

prefix="back_up"
backups="backups"

for file in ${files[@]}; do
	cp "$file" "${prefix}$file"
done
