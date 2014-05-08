from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# nodejs from ppa:chris-lea/node.js
run apt-get -y install software-properties-common
run add-apt-repository -y ppa:chris-lea/node.js &&\
  apt-get update
run apt-get -y install nodejs

# python
run apt-get -y install python2.7 python

# atom
run cd /tmp && git clone https://github.com/atom/atom

# build setup
run apt-get -y install build-essential pkg-config libgnome-keyring-dev
run git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring 

# Creates application at /tmp/atom-build/Atom
run cd /tmp/atom && script/build

# Generates a .deb package at /tmp/atom-build
run cd /tmp/atom && script/grunt mkdeb 

run mv /tmp/atom-build /
run rm -rf /tmp/*
run mv /atom-build /tmp

cmd ["cp", "/tmp/atom-build/", "/pwd/", "-r"]
workdir /tmp/atom-build