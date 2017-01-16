class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def testing
    render html: "hello, world"
  end
end
