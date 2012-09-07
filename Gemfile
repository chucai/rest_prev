source 'http://ruby.taobao.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

group :development do
  gem 'quiet_assets', "1.0.1"
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

  # Bootstrap
  gem 'anjlab-bootstrap-rails', '>= 2.1', :require => 'bootstrap-rails'
  gem 'bootstrap-will_paginate', '0.0.3'
  gem 'bootstrap_helper', "1.4.1"

end

gem 'jquery-rails'
gem 'thin'
group :development, :test do 
  gem 'database_cleaner'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '2.9.0'
  gem 'capybara', '1.1.2'
end
