source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"
gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "net-http"
gem "haml-rails"
gem "sass-rails"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "byebug"
  gem "rspec-rails", "~> 6.0.0.rc1"
  gem "factory_bot_rails"
  gem "faker"
  gem "shoulda-matchers", "~> 5.0"
  gem "capybara"
end

group :development do
  gem "web-console"
end

group :test do
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "rack_session_access"
end
