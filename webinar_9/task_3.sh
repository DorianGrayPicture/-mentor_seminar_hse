#!/bin/bash

min_length=5
password=""

while true; do	
    read -p "Enter a password length: " length

    if [ $length -lt $min_length ]; then
	    echo "The password length can not be less then $min_length !"
	    continue
    fi;

    for (( i=1; i<=length; i++ ))
    do
	    character=$(openssl rand -base64 1 | tr -dc 'a-zA-Z0-9' | head -c 1)
	    password="${password}${character}"
    done

    echo "Your password is:"
    echo "$password"

    break
done
