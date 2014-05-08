#from ubuntu:12.04
from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# nodejs
run apt-get -y install nodejs-legacy npm

# python
run apt-get -y install python2.7

run npm config set python /usr/bin/python2 -g

# atom
run cd /tmp && git clone https://github.com/atom/atom

# Creates application at /tmp/atom-build/Atom
run cd /tmp/atom && script/build

# Installs command to /usr/local/bin/atom
run cd /tmp/atom && script/grunt install 

# Generates a .deb package at /tmp/atom-build
run cd /tmp/atom && script/grunt mkdeb 

run rm -rf /tmp/*

# cmd
# expose
# workdir