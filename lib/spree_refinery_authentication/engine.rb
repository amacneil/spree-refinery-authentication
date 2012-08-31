require "spree/authentication_helpers"

module SpreeRefineryAuthentication
  class Engine < Rails::Engine
    engine_name "spree_refinery_authentication"

    config.before_initialize do
      Spree.user_class = "Refinery::User"
    end

    config.to_prepare do
      ApplicationController.send :include, Spree::AuthenticationHelpers
    end  
  end
end
