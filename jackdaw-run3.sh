inotifywait -m /path -e create -e moved_to |
    while read path action file; do
        if [[ "$file" =~ .*txt$ ]]; then # Does the file end with .xml?
            echo "youtube-dl" # If so, do your thing here!
        fi
    done
