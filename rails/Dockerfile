from webwurst/circus-serf-base

# ruby
run apt-get -y install ruby2.0 build-essential ruby2.0-dev zlib1g-dev libssl-dev libreadline-dev libdevil-dev libsqlite3-dev libmysqlclient-dev freetds-dev libxslt1-dev libxml2-dev libffi-dev

# memcached
run apt-get -y install memcached

# gems
#onbuild add Gemfile /tmp/
#onbuild add Gemfile.lock /tmp/
#
#onbuild run gem install bundler --no-document
##run cd /tmp && bundle update nokogiri
#onbuild run NOKOGIRI_USE_SYSTEM_LIBRARIES=1 bundle install --system --jobs 4 --gemfile /tmp/Gemfile

# circus config
add circus_memcached.ini /etc/circus.d/
add circus_rails.ini /etc/circus.d/
add rails_start.sh /usr/local/bin/
run chmod +x /usr/local/bin/*

expose 80
workdir /var/www