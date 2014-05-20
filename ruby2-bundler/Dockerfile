from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# ruby
run apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev libdevil-dev libsqlite3-dev libmysqlclient-dev freetds-dev libxslt1-dev libxml2-dev libffi-dev nodejs

# ruby
run cd /tmp && git clone https://github.com/sstephenson/ruby-build.git
run /tmp/ruby-build/install.sh
# ruby-build --definitions
run ruby-build 2.1.2 /usr/local

run gem install bundler --no-document

#cmd
#expose
#workdir