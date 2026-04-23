#!/usr/bin/env bash
set -o errexit

bundle install

# Allow assets precompile during build without a real production secret.
SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile
bundle exec rails assets:clean
