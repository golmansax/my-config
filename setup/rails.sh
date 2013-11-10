#!/bin/bash
#
# @author holman
#
# Installs Rails (Ruby) and Compass (Sass) frameworks
# Tested on a DigitalOcean droplet with Ubuntu 13.10

USER=`whoami`

# Install RVM (Ruby Version Manager)
sudo apt-get install -y curl
\curl -L https://get.rvm.io | bash -s stable
rvm requirements

# Install latest Ruby
rvm install ruby
rvm use ruby --default

# Install latest RubyGems
rvm rubygems current

# Install Rails
gem install rails
