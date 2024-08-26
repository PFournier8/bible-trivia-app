require_relative "boot"

require "rails/all"

# Conditionally require dotenv in development and test environments
if %w[development test].include?(ENV['RAILS_ENV'])
  require 'dotenv-rails'
  Dotenv::Rails.load
end

Bundler.require(*Rails.groups)

module BibleTriviaApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Autoload and Eager Load settings
    config.autoload_lib(ignore: %w[assets tasks])

    # Additional application configuration can be placed here
    config.assets.enabled = true
  end
end