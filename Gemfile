source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'mysql2'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'thin'
gem 'execjs'
# gem 'therubyracer'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'simple_form'
gem 'nested_form'
gem 'country_select'
gem 'pg'
gem 'carrierwave'
# gem 'fog'
# gem 'zencoder'
gem 'rmagick'
# gem 'flash_cookie_session'
# gem "browser"
gem 'kaminari' #pagination
#gem 'ransack' #search
gem 'sunspot_rails'

# Gems used only for assets and not required
# in production environments by default.

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'


gem "haml", ">= 3.1.4"

gem "devise", ">= 2.0.0"

gem 'faker'

# BDD for JavaScript
gem 'jasmine-rails', :group => [ :development, :test ]

group :development do
  gem 'sunspot_solr'
  gem 'progress_bar'
  gem "haml-rails", ">= 0.3.4"
  gem "rspec-rails", ">= 2.8.1"
  gem "guard", ">= 0.6.2"
  gem "guard-bundler", ">= 0.1.3"
  gem "guard-rails", ">= 0.0.3"
  gem "guard-livereload", ">= 0.3.0"
  gem "guard-rspec", ">= 0.4.3"
  gem "guard-cucumber", ">= 0.6.1"
  gem "guard-coffeescript"
  gem "guard-sass"
  gem "rails-footnotes", ">= 3.7"
  gem 'guard-annotate'
  gem 'rails-erd'
  gem 'faker'
  gem "heroku_san"
  gem 'ruby-debug19'
  
end

group :test, :development do
  gem 'steak'
end

group :test do
  #remove capybara, rspec if using steak
  gem "machinist"
  gem "factory_girl_rails"
  gem "cucumber-rails", ">= 1.2.1"
  #gem "capybara", ">= 1.1.2"
  gem "database_cleaner", ">= 0.7.1"
  gem "launchy", ">= 2.0.5"
  #gem "rspec-rails", ">= 2.8.1"
  gem 'machinist_callbacks'
  gem "shoulda-matchers"
  gem "mynyml-redgreen", :require => "redgreen"
  gem "cucumber"
  # gem "pickle", :git => "git://github.com/kb/pickle.git"
  gem 'spork'
  gem 'headless'
end