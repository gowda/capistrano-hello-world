# frozen_string_literal: true

# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

server ENV.fetch('CAP_DEPLOY_SERVER'), user: ENV.fetch('CAP_DEPLOY_USER'), roles: ['app', 'db', 'web']

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
set :ssh_options, {
  keys: [ENV.fetch('CAP_DEPLOY_KEY_PATH')],
  forward_agent: false,
  auth_methods: ['publickey']
}

set :rails_env, 'production'
set :default_env, { RAILS_MASTER_KEY: ENV.fetch('RAILS_MASTER_KEY'), RAILS_PRODUCTION_HOST: ENV.fetch('RAILS_PRODUCTION_HOST') }
set :systemctl_user, :system

before 'puma:restart', 'services:link'
