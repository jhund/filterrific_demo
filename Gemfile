source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'bootstrap', '~> 4.3.1'
gem 'haml-rails'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'will_paginate'
gem 'will_paginate-bootstrap4'
gem 'jbuilder', '~> 2.7'
gem 'filterrific', path: "../filterrific"
gem 'jquery-rails'
gem 'sassc-rails'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'faker'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
group :assets do
  gem 'uglifier'
end
gem 'coffee-rails' 

group :development, :test do
  gem 'mysql2'
end

group :test do
  gem 'wwtd'
end
