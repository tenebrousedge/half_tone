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
gem 'carrierwave'
gem 'codemirror-rails'
gem 'coffee-rails'
gem 'comfortable_mexican_sofa', '~> 2.0.0'
gem 'devise'
gem 'font-awesome-rails'
gem 'haml'
gem 'honeybadger'
gem 'impressionist'
gem 'kaminari'
gem 'mini_magick'
gem 'omniauth'
gem 'pg'
gem 'polymorphic_join'
gem 'publishable'
gem 'puma'
gem 'pundit'
gem 'rack-canonical-host'
gem 'rails', '~> 6.0.0'
gem 'rails_admin', git: 'https://github.com/sferik/rails_admin.git'
gem 'rails_admin-i18n'
gem 'rails_admin_multiple_file_upload'
gem 'react-rails'
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
  gem 'binding_of_caller'
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
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

gem 'suspenders', group: %i[development test]

# workaround from https://github.com/protocolbuffers/protobuf/issues/4460
gem 'google-protobuf', '~> 3.7', platforms: ['ruby']
gem 'grpc', '1.21.0', platforms: ['ruby']
