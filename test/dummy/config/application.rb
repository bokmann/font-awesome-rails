require File.expand_path('../boot', __FILE__)

# require "rails/all"
require "sprockets/railtie"

Bundler.require(:default, :development)

module Dummy
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
