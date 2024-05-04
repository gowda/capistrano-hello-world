# frozen_string_literal: true

namespace :services do
  desc "Add symlink for service file to /etc/systemd/system"
  task :link do
    sh "sudo ln -sf #{current_path}/systemd/hello-world_puma.service /etc/systemd/system/hello-world_puma_staging.service"
  end
end
