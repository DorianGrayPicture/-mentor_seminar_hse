#!/bin/bash

read -p "Enter the first number: " a
read -p "Enter the second number: " b

if [ $a -gt $b ]; then
	echo "$a is greater then $b"
elif [ $a -lt $b ]; then
	echo "$a is less then $b"
else
	echo "$a is equal to $b"
fi;

