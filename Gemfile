source 'https://rubygems.org'

gem 'bundler', '>= 1.8.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

# Use oracle as the database for Active Record
gem 'ruby-oci8'
gem 'activerecord-oracle_enhanced-adapter', '~> 1.6.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'newrelic_rpm'
gem 'font-awesome-rails'
gem 'rails-assets-foundation', source: 'https://rails-assets.org'
gem 'devise'
gem 'cancancan', '~> 1.10'
gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'
gem 'pdf-reader'
gem 'rufus-scheduler'
gem 'httparty'
gem 'haversine'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'money'
gem 'jquery-datatables-rails', '~> 3.4.0'
gem 'puma'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem "wice_grid", '3.6.0.pre4'
gem 'font-awesome-sass',  '~> 4.3'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views

#  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

