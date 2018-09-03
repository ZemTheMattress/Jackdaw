##!/usr/bin/env bash

# Start Dropbox #

 ~/.dropbox-dist/dropboxd

# Detect change #

inotifywait -m /media/twittersync/jackdaw_link.txt -e create -e moved_to |
    while read path action file; do
        if [[ "$file" =~ .*txt$ ]]; then # Does the file end with .xml?
            echo "xml file" # If so, do your thing here!
        fi
    done

# execute download #
