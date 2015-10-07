#!/bin/bash

# This script will check if there are any <none> tagged
# images on the top level of docker images.
# The reason this happens is because using docker build
# multiple times it untagges the images setting it to
# <none> and creates a new build with their right tags
# and making a mess from your docker images list.

IMAGES=$(docker images | grep "^<none>")

if [ "$IMAGES" != "" ];
  then
    printf "Found images tagged with <none> \n Trying to remove them now...\n"
    docker rmi -f $(docker images | grep "^<none>" | awk '{ print $3 }')
    printf "Done removing images tagged with <none>!\n"
  else
    printf "There are no images tagged as <none>\n"
fi

exit 0
