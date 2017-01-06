# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Set Paperclip ImageMagick path
Paperclip.options[:command_path] = "/usr/bin/"

# Initialize the Rails application.
Rails.application.initialize!
