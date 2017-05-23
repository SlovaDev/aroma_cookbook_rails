require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module MyCookbook
  class Application < Rails::Application
    # Set available locales
    I18n.available_locales = [:en, :ru]
    I18n.default_locale = :en

    config.eager_load_paths << Rails.root.join('lib')
    
    config.to_prepare do
      Devise::SessionsController.layout "auxillary"
      Devise::RegistrationsController.layout "auxillary"
      Devise::ConfirmationsController.layout "auxillary"
      Devise::UnlocksController.layout "auxillary"
      Devise::PasswordsController.layout "auxillary"
    end
  end
end
