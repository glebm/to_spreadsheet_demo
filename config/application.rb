require File.expand_path('../boot', __FILE__)

require 'rails'
require 'action_controller/railtie'
require 'rails/test_unit/railtie'
require 'sprockets/railtie'


if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module ToSpreadsheetDemo
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
