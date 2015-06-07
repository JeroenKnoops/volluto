require "warden"

module Volluto
  class Engine < ::Rails::Engine
    isolate_namespace Volluto

    config.generators do |g|
      g.test_framework :rspec, view_specs: false
    end

    initializer "volluto.middleware.warden" do
      Rails.application.config.middleware.use Warden::Manager do |manager|
        manager.serialize_into_session do |user|
          user.id
        end
        manager.serialize_from_session do |id|
          Volluto::User.find(id)
        end
      end
    end
  end
end
