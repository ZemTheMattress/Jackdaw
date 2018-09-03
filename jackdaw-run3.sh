inotifywait -m /media/twittersync -e create -e moved_to |
    while read path action file; do
        if [[ "$file" =~ .*txt$ ]]; then
            echo "youtube-dl"
        fi
    done
