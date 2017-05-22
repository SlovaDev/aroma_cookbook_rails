class CalendarController < ApplicationController
	layout 'master'

  def show
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
