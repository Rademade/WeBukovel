require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebukovelApi
  class Application < Rails::Application

    config.assets.paths << "#{config.root}/vendor/assets/javascripts/bower_components"

    config.middleware.insert_before(Rack::Sendfile, LightResizer::Middleware, Rails.root)

  end
end
