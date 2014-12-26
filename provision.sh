#!/bin/bash

apt-get -y update


dpkg -s npm &>/dev/null || { 
  apt-get install python-software-properties
  apt-add-repository ppa:chris-lea/node.js
  apt-get update
  apt-get install -y nodejs
}

command -v gulp &>/dev/null || {
  npm install -g gulp
}

command -v slush &>/dev/null || {
  npm install -g slush slush-y
}


