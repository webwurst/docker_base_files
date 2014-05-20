from webwurst/circus-serf-base
run apt-get update

# ruby
run apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev libdevil-dev libsqlite3-dev libmysqlclient-dev freetds-dev libxslt1-dev libxml2-dev libffi-dev nodejs

# memcached
#run apt-get -y install memcached

run chmod 1777 /tmp

# ruby 2.1.1
run cd /tmp && git clone https://github.com/sstephenson/ruby-build.git
run /tmp/ruby-build/install.sh
# ruby-build --definitions
run ruby-build 2.1.2 /usr/local

run gem install bundler --no-document
run gem install rails --pre --no-document

# gems
#add Gemfile /tmp/
# add Gemfile.lock /tmp/
#run bundle install --system --jobs 4 --gemfile /tmp/Gemfile

# circus config
#add circus_memcached.ini /etc/circus.d/
add circus_rails.ini /etc/circus.d/

expose 80
workdir /var/www