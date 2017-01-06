#!/usr/bin/env puma

directory '/srv/skeleton-rails-project'
rackup "/srv/skeleton-rails-project/config.ru"

pidfile "/srv/skeleton-rails-project/puma.pid"
state_path "/srv/skeleton-rails-project/puma.state"

stdout_redirect '/srv/skeleton-rails-project/log/puma.error.log', '/srv/skeleton-rails-project/log/puma.access.log', true

if ['staging', 'production'].include?(ENV['RAILS_ENV'])
  threads 4,16
  workers 4
end
environment ENV['RAILS_ENV'] || 'development'
ssl_bind '0.0.0.0', '8080', { key: '/srv/skeleton-rails-project/vagrant/server.key', cert: '/srv/skeleton-rails-project/vagrant/server.crt' }

preload_app!

on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = "/srv/skeleton-rails-project/Gemfile"
end

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
