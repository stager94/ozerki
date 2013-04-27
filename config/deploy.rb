require "rvm/capistrano" 
require 'bundler/capistrano'
require 'capistrano_colors'

default_run_options[:pty] = true

ssh_options[:forward_agent] = true
set :using_rvm, true
set :rvm_type, :system

set :application,     "hostel"

set :deploy_server,   "fluorine.locum.ru"

set :bundle_without,  [:development, :test]

set :user,            "hosting_skmz"
set :login,           "skmz"
set :use_sudo,        false
set :deploy_to,       "/home/#{user}/projects/#{application}"
set :unicorn_conf,    "/etc/unicorn/#{application}.#{login}.rb"
set :unicorn_pid,     "/var/run/unicorn/#{application}.#{login}.pid"
set :bundle_dir,      File.join(fetch(:shared_path), 'gems')
role :web,            deploy_server
role :app,            deploy_server
role :db,             deploy_server, :primary => true

set :rvm_ruby_string, "1.9.3"
set :rake,            "rvm use #{rvm_ruby_string} do bundle exec rake" 
set :bundle_cmd,      "rvm use #{rvm_ruby_string} do bundle"

set :scm,             :git
set :scm_verbose, true
set :git_enable_submodules, 1
set :deploy_via, :remote_cache
set :use_sudo, false
set :repository,    "git@github.com:stager94/ozerki.git"

load 'deploy/assets'

set :unicorn_start_cmd, "(cd #{deploy_to}/current; rvm use #{rvm_ruby_string} do bundle exec unicorn_rails -Dc #{unicorn_conf})"

# - for unicorn - #
namespace :deploy do
  desc "Start application"
  task :start, :roles => :app do
    run unicorn_start_cmd
  end

  desc "Stop application"
  task :stop, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn_start_cmd}"
  end
end