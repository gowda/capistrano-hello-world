# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.18.0'

require 'dotenv/load'

set :application, 'hello-world'
set :repo_url, 'https://github.com/gowda/capistrano-hello-world.git'
set :branch, 'main'

set :deploy_to, "#{ENV.fetch('CAP_HOME')}/#{fetch(:application)}"
