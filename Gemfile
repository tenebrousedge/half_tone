# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.4'

gem 'autoprefixer-rails'

gem 'bootsnap', require: false
gem 'fae-rails'
gem 'honeybadger'
gem 'pg'
gem 'puma'
gem 'rack-canonical-host'
gem 'rails', '~> 6.0.0'
gem 'recipient_interceptor'
gem 'sassc-rails'
gem 'skylight'
gem 'sprockets', '>= 3.0.0'
gem 'title'
gem 'tzinfo-data', platforms: %i[mingw x64_mingw mswin jruby]
gem 'webpacker'

group :development do
  gem 'debase'
  gem 'listen'
  gem 'rack-mini-profiler', require: false
  gem 'ruby-debug-ide'
  gem 'spring'
  gem 'web-console'
end

group :development, :test do
  gem 'awesome_print'
  gem 'bundler-audit', '>= 0.5.0', require: false
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'turnip', '~> 4.0.0'
end

group :test do
  gem 'formulaic'
  gem 'launchy'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

gem 'suspenders', group: %i[development test]
