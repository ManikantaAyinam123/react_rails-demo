#!/usr/bin/env bash
set -o errexit

# Install Bundler
gem install bundler

# Install Ruby dependencies
bundle install

# Install Webpacker
bundle exec rails webpacker:install

# Check if `webpacker.yml` is properly configured for production
if [ ! -f config/webpacker.yml ]; then
  echo "Webpacker configuration file not found. Please ensure it is properly configured."
  exit 1
fi

# Install Node dependencies
npm install

# Precompile assets with the OpenSSL legacy provider
cross-env NODE_OPTIONS=--openssl-legacy-provider npm run build

# Compile Webpacker assets for production
bundle exec rails webpacker:compile

# Clean assets (optional, depends on your use case)
bundle exec rails assets:clean

# Migrate the database
bundle exec rails db:migrate
