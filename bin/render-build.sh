#!/usr/bin/env bash
set -o errexit

# Install Ruby dependencies
bundle install

# Install Webpacker
bundle exec rails webpacker:install

# Install Node dependencies
npm install

# Precompile assets
bundle exec rails assets:precompile

# Clean assets (optional, depends on your use case)
bundle exec rails assets:clean

# Migrate the database
bundle exec rails db:migrate
