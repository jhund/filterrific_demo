source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

gem "rails", "~> 6.1.4", ">= 6.1.4.1"
gem "pg"
gem "puma", "~> 5.0"
gem "bootstrap", "~> 4.3.1"
gem "haml-rails"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "will_paginate"
gem "will_paginate-bootstrap4"
gem "jbuilder", "~> 2.7"
gem "filterrific"
gem "jquery-rails"
gem "sassc-rails"
gem "bootsnap", ">= 1.4.4", require: false

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "uglifier"
end

gem "coffee-rails" # specify in default group to avoid autoload warnings on tests
group :development, :test do
  # supported database adapters
  # gem 'pg' # already specified in default group higher up
  gem "mysql2"
end

group :development do
  gem "faker"
  gem "listen"
end

group :test do
  gem "wwtd"
end
