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

ENV RAILS_ENV=production
RUN bundle exec rake assets:precompile --trace
ADD init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]

