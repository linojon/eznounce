source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'

gem 'pg'

gem 'bcrypt-ruby', '~> 3.0.0' # Use ActiveModel has_secure_password

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0' # compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'
gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'turbolinks' # makes following links in your web application faster. Read more: https://github.com/rails/turbolinks

gem 'jquery-rails'
gem 'haml-rails'

gem 'unicorn'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'debugger'
  gem "binding_of_caller"
  gem "better_errors"
  gem 'rspec-rails', '~> 2.0'
  gem 'capybara'
end

group :production do
  gem 'rails_12factor' # http://12factor.net/
end

