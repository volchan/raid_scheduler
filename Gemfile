source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bcrypt'
gem 'devise'
gem 'devise-i18n'
gem 'devise-jwt'
gem 'graphql'
gem 'pg'
gem 'pry-rails'
gem 'puma'
gem 'rack-cors'
gem 'rails'

gem 'bootsnap', require: false

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platforms: %I[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'graphiql-rails'
  gem 'listen'
  gem 'pry-byebug'
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'spring'
  gem 'spring-watcher-listen'
end

gem 'tzinfo-data', platforms: %I[mingw mswin x64_mingw jruby]
