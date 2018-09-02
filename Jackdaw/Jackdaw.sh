##!/usr/bin/env bash

# Detect change #

inotifywait -m /path -e create -e moved_to |
    while read path action file; do
        if [[ "$file" =~ .*xml$ ]]; then # Does the file end with .xml?
            echo "xml file" # If so, do your thing here!
        fi
    done

# execute download #
