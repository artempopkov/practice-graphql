source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'faker', '~> 2.20.0'
gem 'graphql', '~> 2.0.5'
gem 'rack-cors', '~> 1.1.1'
gem 'graphql-anycable', '~> 1.0'
group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end
gem "graphiql-rails", group: :development
