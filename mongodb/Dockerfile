from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# mongodb
run apt-get -y install mongodb

cmd ["/usr/bin/mongod", "--unixSocketPrefix=/var/run/mongodb", "--config=/etc/mongodb.conf", "--bind_ip=0.0.0.0", "run"]
volume ["/var/lib/mongodb"]
expose 27017 28017