source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.5"
gem "sprockets-rails"
gem "mysql2"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"

gem 'devise'
gem 'kaminari'
gem 'activeadmin'


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry-rails'
end

group :development do
  gem "web-console"
  
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
