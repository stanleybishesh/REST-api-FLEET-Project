source "https://rubygems.org"

gem "rails", "~> 7.2.0.rc1"
gem "sqlite3", ">= 1.4"
gem "puma", ">= 5.0"

gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "bootsnap", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem "rack-cors"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  gem "brakeman", require: false

  gem "rubocop-rails-omakase", require: false

  gem 'devise', '~> 4.9', '>= 4.9.3'
end


