source 'http://rubygems.org'

ruby '2.3.1'

# Must be at top for ENV variables to flow down into other gems
gem 'dotenv'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6' # MIT License

# Postgres support
gem 'pg' # Ruby License

# JS runtime
gem 'therubyracer',  platforms: :ruby # MIT License

# JS frameworks and tools
gem 'jquery-rails' # MIT License
gem 'underscore-rails'          # MIT License

# Browser detection
gem 'browser'

# Rails Angular assets
source 'https://rails-assets.org' do
  gem 'rails-assets-angular', '1.5.8'                    # MIT License
  gem 'rails-assets-angular-animate', '1.5.8'            # MIT License
  gem 'rails-assets-angular-route', '1.5.8'              # MIT License
  gem 'rails-assets-angular-resource', '1.5.8'           # MIT License
  gem 'rails-assets-angular-sanitize', '1.5.8'           # MIT License

  group :development, :test do
    gem 'rails-assets-angular-mocks'
  end
end

gem 'httparty'

# API support
gem 'grape', :git => "https://github.com/intridea/grape.git"  # MIT License
gem 'grape-active_model_serializers'                          # MIT License
gem 'hashie-forbidden_attributes' # MIT License
gem 'rack-cors', require: 'rack/cors' # MIT License

# Automated capistrano slack notifications
gem 'slackistrano' # MIT License

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0' # MIT License

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc # MIT License

# Add gems for authentication/authorization
gem "devise", ">=3.0"               # MIT License
gem "devise_ldap_authenticatable"   # MIT License
gem 'cancancan', '~> 1.9'           # MIT License
gem 'devise-token_authenticatable'  # MIT License

# Rails Admin
gem 'rails_admin' # MIT License

gem 'eventmachine', :git => 'https://github.com/eventmachine/eventmachine.git', :ref => '93ac34d0de1baf218f5c2ca61d39f4230737be7e' # GPLv2 License or Ruby
gem "puma", :platforms => [:ruby] # MIT License
gem "rack-ssl" # MIT License
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw] # MIT License

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'      # MIT License
gem 'bootstrap-sass', '= 3.2.0.2' # MIT License
gem "font-awesome-rails"          # MIT License

# Gems used only for assets and not required
# in production environments by default.
# Assets
group :assets do
   gem 'uglifier', '>= 1.0.3' # MIT License
   gem 'yui-compressor'       # BSD License
end

# Ensure net/https uses OpenSSL::SSL::VERIFY_PEER to verify SSL certificates and provides certificate bundle in case OpenSSL cannot find one
gem 'certified' # MIT License

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
  gem "method_profiler", require: false # MIT License
  gem "awesome_print", :require => "ap" # MIT License
  gem 'rb-readline'                     # BSD License
  gem 'ap'                              # MIT License
  gem 'crack'                           # MIT License
  gem "hirb"                            # MIT License
  gem "foreman"                         # MIT License
  gem "pry-rails"                       # MIT License
  gem "pry-byebug"                      # MIT License
  gem 'capistrano', '~> 3.1'            # MIT License
  gem 'capistrano-rails', '~> 1.1'      # MIT License
  gem 'capistrano-resque', require: false # MIT License
  gem 'capistrano3-puma'                # MIT License
  gem 'jshint', :git => 'https://github.com/damian/jshint' # MIT License
  gem 'capybara'                        # MIT License
  gem 'capybara-angular'                # MIT License
  gem 'capybara-screenshot'             # MIT License
  gem 'phantomjs', :require => 'phantomjs/poltergeist' # MIT License
  gem 'poltergeist'                     # MIT License
  gem "rails-erd"                       # MIT License
  gem "webmock"
end

