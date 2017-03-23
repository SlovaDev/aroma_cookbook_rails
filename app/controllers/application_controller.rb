class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :detect_device_variant

  def verify_user
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def set_locale
    if cookies[:my_cookbook_locale]
      l = cookies[:my_cookbook_locale].to_sym
    else
      begin
         country_code = request.location.country_code
         if country_code
           country_code = country_code.downcase.to_sym
           # use russian for CIS countries, english for others
           [:ru, :kz, :ua, :by, :tj, :uz, :md].include?(country_code) ? l = :ru : l = :en
         else
           l = I18n.default_locale # use default locale if cannot retrive this info
         end
    rescue
      l = I18n.default_locale
    ensure
     cookies.permanent[:my_cookbook_locale] = l
    end
  end
    I18n.locale = l
  end

  def detect_device_variant
    request.variant = :phone if browser.device.mobile?
    request.variant = :tablet if browser.device.tablet?
    request.variant = :desktop if !browser.device.mobile? && !browser.device.tablet?
  end
end
