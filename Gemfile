source "https://rubygems.org"

# Rails 4.1 was first released in April 2014
gem "rails", "4.2.10"

gem "bootstrap-datepicker-rails"
gem "bootstrap-sass"
gem "chardinjs-rails"
gem "filterrific", "~> 4.0" # , path: '../filterrific'
gem "haml-rails"
gem "jbuilder"
gem "jquery-rails"
gem "pg", "~> 0.18.1" # Jan 2015
gem "random_data"
gem "thin"
gem "turbolinks"
gem "will_paginate", "~> 3.0.7" # Jul 2014
gem "will_paginate-bootstrap", "~> 1.0.1" # Jul 2014

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "sass-rails"
  gem "uglifier"
end

gem "coffee-rails" # specify in default group to avoid autoload warnings on tests

group :development, :test do
  # supported database adapters
  # gem 'pg' # already specified in default group higher up
  gem 'mysql2', '~> 0.3.18' # http://stackoverflow.com/questions/32457657/rails-4-gemloaderror-specified-mysql2-for-database-adapter-but-the-gem-i
  gem "standard"
end

group :development do
  gem "spring"
  gem "web-console", "~> 2.0"
end

group :test do
  gem "wwtd"
end
