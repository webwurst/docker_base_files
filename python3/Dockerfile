from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# python3
run apt-get -y install python3 python3-pip
run update-alternatives --install /usr/bin/python python /usr/bin/python3 10

cmd ["/usr/bin/python"]
workdir /source