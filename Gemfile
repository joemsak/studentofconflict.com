source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "rails", github: "rails/rails"
gem "sprockets-rails", ">= 3.4.1"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails", ">= 0.9.2"
gem "turbo-rails", ">= 0.9.0"
gem "stimulus-rails", ">= 0.7.3"
gem "jbuilder", "~> 2.11"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  gem "debug", ">= 1.0.0", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "shoulda-matchers"
  gem "dotenv"
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "foreman"
  gem "standardrb"
end

gem "cssbundling-rails", "~> 0.2.7"

gem "money-rails", "~> 1.15"

gem "friendly_id", "~> 5.4"

# gem "airbrake", "~> 12.0"
