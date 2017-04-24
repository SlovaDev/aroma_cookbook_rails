class MasterController < ApplicationController
  layout :master_dashboard

  def index
  end

  private
    def master_dashboard
      user_signed_in? ? "master" : "application"
    end
end
