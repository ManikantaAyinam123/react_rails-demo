#!/usr/bin/env bash
set -o errexit

npm install
npm run build

gem install foreman
bundle install
bundle exec rails webpacker:install
bundle exec rails assets:precompile
bundle exec rails assets:clean
