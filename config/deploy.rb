# coding: utf-8
require 'bundler/capistrano'
require "rvm/capistrano"
require 'capistrano_colors'
# require 'capistrano/ext/multistage'
# require 'capistrano_recipes'

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :rvm_path, '/usr/local/rvm'

set :using_rvm, true
set :rvm_ruby_string, 'ruby-1.9.3-p429'
set :rvm_type, :system

set :application, "ozerki"
set :rails_env, "production"
set :domain, "root@146.185.156.130"
set :deploy_to, "/var/www/#{application}"

set :use_sudo,    false
set :unicorn_conf, "#{deploy_to}/current/config/unicorn.rb"
set :unicorn_pid, "#{deploy_to}/shared/pids/unicorn.pid"

set :scm, :git
set :repository,  "git@github.com:stager94/ozerki.git"
set :branch, "master"
set :deploy_via, :remote_cache

role :web, domain
role :app, domain
role :db,  domain, :primary => true

after "deploy:update_code", "deploy:copy_old_sitemap"

namespace :deploy do
  task :restart do
    run "if [ -f #{unicorn_pid} ] && [ -e /proc/$(cat #{unicorn_pid}) ]; then kill -USR2 `cat #{unicorn_pid}`; else cd #{deploy_to}/current && bundle exec unicorn_rails -c #{unicorn_conf} -E #{rails_env} -D; fi"
  end
  task :start do
    run "bundle exec unicorn_rails -c #{unicorn_conf} -E #{rails_env} -D"
  end
  task :stop do
    run "if [ -f #{unicorn_pid} ] && [ -e /proc/$(cat #{unicorn_pid}) ]; then kill -QUIT `cat #{unicorn_pid}`; fi"
  end
	task :copy_old_sitemap do
    run "if [ -e #{previous_release}/public/sitemap.xml.gz ]; then cp #{previous_release}/public/sitemap* #{current_release}/public/; fi"
  end
end