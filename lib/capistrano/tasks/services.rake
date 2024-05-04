# frozen_string_literal: true

namespace :services do
  desc 'Add symlink for service file to /etc/systemd/system'
  task :link do
    source_file = "#{current_path}/systemd/#{fetch(:application)}_puma.service"
    target_file = "/etc/systemd/system/#{fetch(:application)}_puma_#{fetch(:stage)}.service"

    sh "sudo rm -f #{target_file}"
    sh "sudo ln -s #{source_file} #{target_file}"
  end
end
