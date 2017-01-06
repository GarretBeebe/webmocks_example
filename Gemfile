source 'https://rubygems.org'

# Must be at top for ENV variables to flow down into other gems
gem 'dotenv'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# # OracleDB support
gem "activerecord-oracle_enhanced-adapter", "~> 1.6.7" # MIT License
gem 'ruby-oci8', '~> 2.1.7' # BSD License

# Opinionated micro-framework for creating REST-like APIs in ruby
gem 'grape', '~> 0.16.0' # MIT License
gem 'grape-active_model_serializers' # MIT License
gem 'active_model_serializers', '~> 0.9.5'
gem 'hashie-forbidden_attributes' # MIT License
gem 'rack-cors', require: 'rack/cors' # MIT License

# OAuth2 Support
gem 'doorkeeper', '~> 3.1.0' # MIT License

# SSO Support for windows
gem 'ntlm-sso' # MIT License

# Automated capistrano slack notifications
gem 'slackistrano' # MIT License

# Add gems for authentication/authorization
gem "devise", "~> 4.1.1"               # MIT License

gem "puma", :platforms => [:ruby] # MIT License
gem "rack-ssl" # MIT License
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw] # MIT License

# caching with memcached
gem 'dalli' # MIT-like license
gem 'connection_pool' # MIT License

# Image processing
gem "paperclip", "~> 4.3.6" # MIT License

group :development, :test do
  gem 'shoulda-matchers'                # MIT License
  gem 'rspec-rails'                     # MIT License
  gem 'database_cleaner'                # MIT License
  gem 'factory_girl_rails'              # MIT License
  gem 'faker', git: 'https://github.com/vitormil/faker' # MIT License
  gem 'rails_best_practices'            # MIT License
  gem 'reek', '>= 3.7.1'                # MIT License
  gem 'rubocop', '>= 0.35.1'            # MIT License
  gem 'simplecov', require: false       # MIT License
  gem "pry-rails"                       # MIT License
  gem "pry-byebug"                      # MIT License
  gem 'capistrano', '~> 3.1'            # MIT License
  gem 'capistrano-rails', '~> 1.1'      # MIT License
  gem 'capistrano3-puma'                # MIT License
end
