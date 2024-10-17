#!/bin/bash

read -p "Enter a server you would like to ping: " server_name

if [[ $server_name =~ ^[a-zA-Z0-9_-]{1,}\.(com|ru)$ ]]; then
	ping -c 1 $server_name
else
	echo "Does not look like a server name"
fi;

#ping -c 1 $server_name

