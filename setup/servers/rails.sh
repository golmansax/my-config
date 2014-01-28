#!/bin/bash -e
#
# @author holman
#
# Installs Rails (Ruby) framework
# Tested on a DigitalOcean droplet with Ubuntu 13.10

USER=`whoami`

# Install RVM (Ruby Version Manager)
sudo apt-get install -y curl
\curl -L https://get.rvm.io | bash -s stable

# Source rvm to use it
source /home/holman/.rvm/scripts/rvm
rvm requirements

# Install latest Ruby
#rvm install ruby
#rvm use ruby --default

# Install latest RubyGems
rvm rubygems current

# Install Rails
gem install rails

# Postgres
sudo apt-get install -y postgresql postgresql-client postgresql-contrib \
  # This lib needed for installing the postgres gem
  libpq-dev \
  imagemagick libmagickwand-dev

# Use Ruby 2.0.0
rvm install 2.0.0
rvm use 2.0.0 --default
gem install rubygems-bundler
gem regenerate_binstubs
