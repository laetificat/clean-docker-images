# Docker image cleaner
[![Build Status](https://travis-ci.org/laetificat/clean-docker-images.svg?branch=master)](https://travis-ci.org/laetificat/clean-docker-images) [![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://tldrlegal.com/license/mit-license)

Laziness, cleans your docker images when using docker because
docker likes to untag previous builds an let them sit there
instead of removing them. This script will look for images
tagged with `<none>` and removes them using the docker rmi
command.
