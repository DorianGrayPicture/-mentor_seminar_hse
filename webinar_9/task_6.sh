#!/bin/bash

FILE_TO_WATCH="file_to_watch.txt"

inotifywait -m $FILE_TO_WATCH
