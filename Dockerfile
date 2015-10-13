FROM ubuntu:12.04

# TAXMATTERS WEBSITE OCT 2015

RUN apt-get -y update -qq 
RUN apt-get -y install ruby \
	build-essential \
	git-core \
	libzlib-ruby \
	openssl \
	libreadline6 \
	libreadline6-dev \
	curl \
	zlib1g \
	zlib1g-dev \
	libssl-dev \
	libyaml-dev \
	libsqlite3-dev \
	sqlite3 \
	libxml2-dev \
	libxslt-dev \
	autoconf \
	libc6-dev \
	ncurses-dev \
	automake \
	libtool \
	bison \
	pkg-config \
	apache2.2-common \
	apache2-mpm-prefork \
	apache2-prefork-dev \
	mysql-client \
	libmysql-ruby \
	libmysqlclient15-dev \
	ruby1.8-dev \
	libapr1-dev \
	rubygems \
	nodejs

COPY taxmatters /taxmatters-app
WORKDIR /taxmatters-app
RUN /usr/bin/gem install bundler
RUN /usr/local/bin/bundle install

RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
CMD ["rails", "server", "--binding", "0.0.0.0"]

