# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'jsbundling-rails'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.3'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'debug', platforms: [:mri, :windows]
end

group :development do
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.3', require: false
  gem 'dotenv', '~> 3.1.0'
  gem 'rubocop', '~> 1.63.0', require: false
  gem 'rubocop-rails', '~> 2.24.0', require: false
  gem 'web-console'
end
