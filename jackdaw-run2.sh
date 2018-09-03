#! /bin/bash
DIRECTORY_TO_OBSERVE="/media/twittersync/"
function block_for_change {
  inotifywait -r \
    -e modify,move,create,delete \
    $DIRECTORY_TO_OBSERVE
}
BUILD_SCRIPT="/media/jackdaw/jackdaw.sh"
function build {
  bash $BUILD_SCRIPT
}
build
while block_for_change; do
  build
done
