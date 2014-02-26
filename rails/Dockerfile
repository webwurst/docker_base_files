from circusserf_base

# ruby
run apt-get -y install ruby2.0 build-essential ruby2.0-dev zlib1g-dev libssl-dev libreadline-dev libdevil-dev libsqlite3-dev libmysqlclient-dev freetds-dev libxslt1-dev libxml2-dev libffi-dev

# memcached
run apt-get -y install memcached

# gems
onbuild add Gemfile /tmp/
onbuild add Gemfile.lock /tmp/

onbuild run gem install bundler --no-document
#run cd /tmp && bundle update nokogiri
onbuild run NOKOGIRI_USE_SYSTEM_LIBRARIES=1 bundle install --system --jobs 4 --gemfile /tmp/Gemfile

# add . /var/www/

expose 80
workdir /var/www