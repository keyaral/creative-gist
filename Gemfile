source "https://rubygems.org"

ruby File.read(".ruby-version")

gem "rails", "~> 5.1.0"

gem "bootstrap-sass"
gem "jquery-rails"
gem "json"
gem "pg", "~> 0.18"
gem "devise"
gem "pundit"
gem "sass-rails", "~> 5.0"
gem "unicorn"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
#

group :production, :staging do
  gem "uglifier"
end

group :development, :test, :staging do
  gem "factory_bot_rails"
  gem "faker"
end

group :development do
  gem "brakeman"
  gem "bundler-audit", require: false
  gem "capybara"
  gem "database_cleaner"
  gem "dotenv-rails"
  gem "letter_opener"
  gem "listen"
  gem "poltergeist"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rails-controller-testing"
  gem "rspec-rails"
  gem "rubocop", require: false
  gem "simplecov", require: false
end
