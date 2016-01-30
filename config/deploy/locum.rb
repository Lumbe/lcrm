role :app, %w(hosting_lumen@titanium.locum.ru)
role :web, %w(hosting_lumen@titanium.locum.ru)
role :db, %w(hosting_lumen@titanium.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production
