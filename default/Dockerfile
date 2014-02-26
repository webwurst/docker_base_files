from stackbrew/ubuntu:saucy
env DEBIAN_FRONTEND noninteractive

run apt-get update
run apt-get -y upgrade

# locales
run locale-gen en_US.UTF-8 && dpkg-reconfigure locales

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu