#!/bin/bash

apt-get -y update

dpkg -s mongo &>/dev/null || { 
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list

  # Update packages list
  apt-get update

  # Install MongoDB
  apt-get -y install mongodb-org  
}


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


