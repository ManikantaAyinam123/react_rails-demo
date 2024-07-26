#!/usr/bin/env bash
set -o errexit

gem install bundler

# Install Ruby dependencies
bundle install

# Install Webpacker
bundle exec rails webpacker:install

# Install Node dependencies
npm install

# Ensure cross-env is installed
npm install --save-dev cross-env

# Precompile assets with the OpenSSL legacy provider
cross-env NODE_OPTIONS=--openssl-legacy-provider npm run build

# Clean assets (optional, depends on your use case)
bundle exec rails assets:clean

# Migrate the database
bundle exec rails db:migrate
