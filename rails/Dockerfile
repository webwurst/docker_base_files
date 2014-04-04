from webwurst/circus-serf-base
run apt-get update

# ruby
run apt-get -y install ruby2.0 build-essential ruby2.0-dev zlib1g-dev libssl-dev libreadline-dev libdevil-dev libsqlite3-dev libmysqlclient-dev freetds-dev libxslt1-dev libxml2-dev libffi-dev

# memcached
run apt-get -y install memcached

run gem install bundler --no-document
run gem install rails --no-document

# # gems
# onbuild add Gemfile /tmp/
# onbuild add Gemfile.lock /tmp/
# onbuild run bundle install --system --jobs 4 --gemfile /tmp/Gemfile

# circus config
add memcached_circus.ini /etc/circus.d/
add rails_circus.ini /etc/circus.d/
add rails_start.sh /usr/local/bin/
run chmod +x /usr/local/bin/*.sh

expose 80
workdir /var/www