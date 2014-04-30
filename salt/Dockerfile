from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# salt
run apt-get -y install software-properties-common
# FIXME! lspci dmidecode
run add-apt-repository -y ppa:saltstack/salt &&\
  apt-get update

run apt-get -y install salt-master

# config
add master /etc/salt/

# tidy up
run rm /tmp/* -rf

cmd ["/usr/bin/salt-master", "--log-level=info"]
expose 4505 4506