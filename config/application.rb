require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module FleetApi
  class Application < Rails::Application
    config.load_defaults 7.2

    config.autoload_lib(ignore: %w[assets tasks])

    config.api_only = true

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'https://stanleybishesh.github.io/Fleet-Project/', "http://127.0.0.1:5500/"
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], expose: ['X-Total-Count']
      end
    end
  end
end
