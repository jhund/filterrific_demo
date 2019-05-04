source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'rails', '~> 5.2.2'

gem 'bootstrap', '~> 4.3.1'
gem 'filterrific' #, path: '../filterrific'
gem 'haml-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'pg'
gem 'puma'
gem 'sassc-rails'
gem 'turbolinks'
gem 'will_paginate'
gem 'will_paginate-bootstrap4'


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
  gem 'mysql2'
end

group :development do
  #### added faker
  gem 'faker'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'
end

group :test do
  gem 'wwtd'
end
