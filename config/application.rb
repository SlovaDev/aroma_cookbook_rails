require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyCookbook
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    I18n.available_locales = [:en, :ru]
    I18n.default_locale = :ru

    config.to_prepare do
      Devise::SessionsController.layout "auxillary"
      Devise::RegistrationsController.layout "auxillary"
      Devise::ConfirmationsController.layout "auxillary"
      Devise::UnlocksController.layout "auxillary"            
      Devise::PasswordsController.layout "auxillary"        
    end
  end
end
