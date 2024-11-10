#!/bin/bash

usage=$(df --output=pcent / | tr -d 'Use %')

if [[ "$usage" -gt 80 ]]; then
	echo "Disc storage is above 80%!"
else
	echo "Everything is fine"
fi;
