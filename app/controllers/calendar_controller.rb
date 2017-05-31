class CalendarController < ApplicationController
	layout 'master'

  def index
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  	@entries_by_date = Entry.all
  end

end
