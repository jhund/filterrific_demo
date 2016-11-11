source 'https://rubygems.org'

gem 'rails', '4.2.0'

gem 'bootstrap-datepicker-rails'
gem 'bootstrap-sass'
gem 'chardinjs-rails'
gem 'filterrific' #, path: '../filterrific'
gem 'haml-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'pg'
gem 'random_data'
gem 'thin'
gem 'turbolinks'
gem 'will_paginate'
gem 'will_paginate-bootstrap'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'uglifier'
end
gem 'coffee-rails' # specify in default group to avoid autoload warnings on tests

group :development, :test do
  # supported database adapters
  # gem 'pg' # already specified in default group higher up
  gem 'mysql2', '~> 0.3.18' # http://stackoverflow.com/questions/32457657/rails-4-gemloaderror-specified-mysql2-for-database-adapter-but-the-gem-i
end

group :development do
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'wwtd'
end
