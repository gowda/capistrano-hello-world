# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.18.0'

require 'dotenv/load'

set :application, 'hello-world'
set :repo_url, 'https://github.com/gowda/capistrano-hello-world.git'
set :branch, 'main'

# Same as default
set :deploy_to, "/var/www/#{fetch(:application)}"
