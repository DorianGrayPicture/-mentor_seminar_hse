#!/bin/bash

read -p "Enter the command to run: " user_command
eval $user_command &
echo "PID: $!"
