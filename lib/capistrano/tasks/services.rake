# frozen_string_literal: true

namespace :services do
  desc 'Add symlink for service file to /etc/systemd/system'
  task :link do
    on roles(:app) do
      source_file = "#{release_path}/systemd/#{fetch(:application)}_puma.service"
      target_file = "/etc/systemd/system/#{fetch(:application)}_puma_#{fetch(:stage)}.service"

      execute :sudo, :rm, '-f', target_file
      execute :sudo, :ln, '-s', source_file, target_file
      execute :sudo, :systemctl, 'daemon-reload'
    end
  end
end
