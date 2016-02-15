source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0', '>= 5.0.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'sprockets-rails', '~> 2.2', '>= 2.2.2'

gem 'fat_free_crm', :git => 'git://github.com/fatfreecrm/fat_free_crm.git'

#gem 'ffcrm_awesome', '0.0.1', :path => '/home/lumen/RailsProjects/lcrm/ffcrm_awesome'

gem 'ffcrm_meta_search', :git => 'https://github.com/crossroads/ffcrm_meta_search.git', branch: 'rails4'

gem 'ffcrm_merge', :github => 'fatfreecrm/ffcrm_merge', branch: 'rails4'

gem 'ffcrm_attachments', github: 'crossroads/ffcrm_attachments', branch: 'rails4'

gem 'bootstrap', '>= 4.0.0.alpha3'

gem 'awesome_print', '~> 1.6', '>= 1.6.1'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'capistrano', '~> 3.4'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-rvm', '~> 0.1.2'
end