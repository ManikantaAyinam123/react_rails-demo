if [ "$RAILS_ENV" = "development" ]; then
  ./bin/webpack-dev-server
else
  echo "Skipping webpack dev server in $RAILS_ENV environment"
fi