namespace :deploy do
  desc "restart server"
  task :restart_server do
    on roles(:all) do
      within current_path do
        execute :'passenger-config', 'restart-app', '$(pwd)'
      end
    end
  end
end
