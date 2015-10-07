#!/bin/bash
# Thanks to caarlos0 for the shell-ci-build script
set -eo pipefail

#main() {
#  local filename="shellcheck_0.3.7-1_amd64.deb"
#  wget "http://ftp.debian.org/debian/pool/main/s/shellcheck/$filename"
#  dpkg -i "$filename"
#}

#main

CHECK=$(shellcheck ./clean-docker-images.sh)

if [ "$CHECK" != "" ]
then
  exit 1
else
  exit 0
fi
