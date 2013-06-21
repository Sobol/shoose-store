source 'https://rubygems.org'

gem 'rails', '3.2.13'
ruby '2.0.0'

gem 'pg'
gem 'activerecord-postgresql-adapter'
gem "paperclip", "~> 3.4.0"
gem "aws-s3"
gem 'aws-sdk'
gem "exception_notification"
gem "amberbit-config", git: "https://github.com/Katharsis/amberbit-config.git"
gem 'sorcery'
gem 'will_paginate'
gem 'foreman'

group :development do
  gem 'letter_opener'
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'passenger', require: false
end

group :test, :development do
  gem 'rspec-rails', require: false
  gem 'quiet_assets'
end

group :test do
  gem 'capybara', '~> 2.0.0'
  gem 'selenium-webdriver'
  gem 'capybara-firebug'
  gem 'poltergeist'
  gem 'faker'
  gem 'database_cleaner'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'turbo-sprockets-rails3'
  gem 'asset_sync'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
