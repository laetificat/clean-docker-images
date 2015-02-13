# Docker image cleaner
[![Build Status](https://travis-ci.org/laetificat/docker-image-cleaner.svg?branch=master)](https://travis-ci.org/laetificat/docker-image-cleaner)

Laziness, cleans your docker images when using fig because
fig likes to untag previous builds an let them sit there
instead of removing them. This script will look for images
tagged with <none> and removes them using the docker rmi
command.
