#!/bin/bash

# Bundle install
bundle install

# Migrate
bundle exec rake db:create
bundle exec rake db:migrate

# Remove puma pid if existed
rm -f tmp/pids/server.pib

# Start services
bundle exec rails s -p 3000 -b "0.0.0.0"
