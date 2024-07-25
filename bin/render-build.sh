
set -o errexit

# bundle install
# bundle exec rails assets:precompile
# bundle exec rails assets:clean
bundle install
 bundle exec rake assets:precompile
  bundle exec rake assets:clean
  ./bin/render-build.sh
  ./bin/rails db:migrate
   bundle exec rails webpacker:install 