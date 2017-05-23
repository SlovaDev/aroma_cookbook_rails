class CalendarController < ApplicationController
	layout 'master'

  def index
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
