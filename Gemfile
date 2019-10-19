# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.4'

gem 'acts_as_approvable', git: 'https://github.com/Tapjoy/acts_as_approvable.git',
                          branch: 'feature/rails4-support'
gem 'autoprefixer-rails'
gem 'aws-sdk', '~> 3'
gem 'bootsnap', require: false
gem 'carrierwave-mongoid'
gem 'comfortable_mexican_sofa', '~> 2.0.0'
gem 'devise'
gem 'haml'
gem 'honeybadger'
gem 'mini_magick'
gem 'mongoid'
gem 'mongoid-paperclip'
gem 'mongoid_publishable'
gem 'omniauth'
gem 'pg'
gem 'puma'
gem 'pundit'
gem 'rack-canonical-host'
gem 'rails', '~> 6.0.0'
gem 'rails_admin'
gem 'rails_admin-i18n'
gem 'recipient_interceptor'
gem 'sassc-rails'
gem 'sidekiq'
gem 'skylight'
gem 'sprockets', '>= 3.0.0'
gem 'title'
gem 'tzinfo-data', platforms: %i[mingw x64_mingw mswin jruby]
gem 'webpacker'

group :development do
  gem 'better_errors'
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
  gem 'database_cleaner'
  gem 'dotenv-rails'
  gem 'factory_bot'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'turnip', '~> 4.0.0'
end

group :test do
  gem 'faker'
  gem 'formulaic'
  gem 'launchy'
  gem 'mongoid-rspec'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

gem 'suspenders', group: %i[development test]

# workaround from https://github.com/protocolbuffers/protobuf/issues/4460
gem 'google-protobuf', '~> 3.7', platforms: ['ruby']
gem 'grpc', '1.21.0', platforms: ['ruby']
