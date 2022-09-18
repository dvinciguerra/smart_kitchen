source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# web
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "puma", "~> 5.0"

# stores
gem "sqlite3", "~> 1.4"
gem "redis", "~> 4.0"
# gem "kredis"

# assets
gem "sprockets-rails"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
# gem "sassc-rails"

# api
gem "jbuilder"


# security
gem "bcrypt", "~> 3.1.7"

# others
gem "tzinfo-data"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug"
  gem "byebug"

  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"

  gem "rubocop-rails"
  gem "solargraph"
end

group :development do
  gem "web-console"
  gem "rack-mini-profiler"
  # gem "spring"
end

