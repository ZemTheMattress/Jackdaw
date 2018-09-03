#!/bin/sh
while inotifywait -e modify -e create /media/twittersync; do
    youtube-dl
done
