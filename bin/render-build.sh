
set -o errexit

# bundle install
# bundle exec rails assets:precompile
# bundle exec rails assets:clean
bundle install
 bundle exec rails assets:precompile
  bundle exec rails assets:clean
  rails db:migrate
   rails webpacker:install
   npm install