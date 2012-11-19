source 'http://rubygems.org'

gem 'rails', '3.2.6'
gem 'devise'
gem 'devise_invitable'
#gem 'devise-encryptable'

gem "ffi-proj4", :git => 'https://github.com/dryade/ffi-proj4.git'

platforms :jruby do
  gem 'activerecord-jdbcpostgresql-adapter', :git => 'https://github.com/dryade/activerecord-jdbc-adapter.git'
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jruby-openssl'
  gem "jruby-rack-worker"
  gem 'warbler'   
end

platforms :ruby do    
  gem 'pg', '~> 0.11.0' 
  gem 'sqlite3'
end

gem "map_layers", "~> 0.0.4"
gem "georuby-ext", :git => 'https://github.com/dryade/georuby-ext.git'

gem 'user_interface', :git => 'https://github.com/dryade/user-interface.git'
#gem 'user_interface', :git => 'git://sim.dryade.priv/user_interface' #, :path => '~/Projects/UserInterfaceDryade'
gem 'json'
gem 'cocoon'
gem 'formtastic'
gem 'inherited_resources'
gem 'will_paginate', '~> 3.0'
gem 'ransack'
gem 'squeel'
gem 'RedCloth'
gem 'jquery-rails'
gem "modernizr-rails", "~> 2.0.6"
gem 'gravatar_image_tag'
gem 'calendar_helper', :git => "https://github.com/topfunky/calendar_helper.git"

gem "acts_as_tree", :git => "https://github.com/dryade/acts_as_tree.git"
gem 'ninoxe', :git => 'https://github.com/dryade/ninoxe.git'
#gem 'ninoxe', :git => 'https://github.com/dryade/ninoxe.git', :branch => 'V2_0_0'
#gem 'ninoxe', :git => 'git://chouette.dryade.priv/ninoxe' #, :path => '~/Projects/Ninoxe'
#gem 'ninoxe', :path => '~/workspace/chouette/ninoxe'
gem 'acts_as_list', '0.1.6'

#gem 'composite_primary_keys', '~> 5.0.8'
gem 'delayed_job_active_record'
gem 'apartment',:git => 'https://github.com/dryade/apartment.git'

# some views use coffee script
gem 'coffee-rails', '~> 3.2.1'
gem 'coffee-script-source'
gem 'therubyrhino', :platform => :jruby
gem 'therubyracer', :platform => :ruby

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

group :development do 
  gem 'capistrano'
  gem 'capistrano-ext'   
  gem 'guard'
  gem 'guard-rspec'
end

group :test, :development do
  gem "rspec"
  gem "rspec-rails"
  gem "remarkable", "~> 4.0.0.alpha4"           
  gem "remarkable_activerecord", "~> 4.0.0.alpha4" 
  gem "shoulda-matchers"
  gem 'rb-inotify', :platform => :ruby
end

group :test do
  gem 'capybara'     
  gem 'launchy'
  gem 'database_cleaner', :git => 'https://github.com/dnagir/database_cleaner.git', :branch => 'postgre_jruby_issue'
  gem 'factory_girl_rails', '1.7'
end

group :production do
   gem "SyslogLogger"
end

