require "spree/authentication_helpers"

module SpreeRefineryAuthentication
  class Engine < Rails::Engine
    engine_name "spree_refinery_authentication"

    config.to_prepare do
      Spree.user_class = "Refinery::User"

      WillPaginate::ActiveRecord::RelationMethods.send :alias_method, :per, :per_page
      WillPaginate::ActiveRecord::RelationMethods.send :alias_method, :num_pages, :total_pages

      ApplicationController.send :include, Spree::AuthenticationHelpers
    end  
  end
end
