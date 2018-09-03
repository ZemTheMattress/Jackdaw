#!/bin/sh
while inotifywait -e modify -e create /media/twittersync; do

    rsync [options] /home/me/code/ /media/nfs/code/
done
