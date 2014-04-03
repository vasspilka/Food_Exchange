source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails', '4.0.3'
gem 'turbolinks'
gem 'devise'

# Javascript related gems
gem 'uglifier', '>= 1.3.0'        # Removes all spaces from css files.
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jbuilder', '~> 1.2'
gem 'underscore-rails'

# File upload
gem 'paperclip'

# Internationalization & Location
gem 'rails-i18n'      # Locale & Languages
gem "geocoder"        # Handling geographic data
gem 'gmaps4rails'     # Google maps intergration


# Front-end gems
gem 'entypo-rails'
gem "breakpoint"
gem 'sass-rails'
gem 'simple_form'
gem 'nested_form'
gem 'compass-rails', '~> 1.1.3'


# Bootstrap so I can work with a nicer interface
gem 'bootstrap-sass'
gem 'bootstrap-generators', :git => 'git://github.com/decioferreira/bootstrap-generators.git'



group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'meta_request'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'hub', :require=>nil
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

# Production gems
group :production do 
  gem 'pg'  # Postgres Database
  gem 'rails_12factor', '0.0.2'
end

# Capistrano for deployment
group :development do
  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
end