class CalendarController < ApplicationController
	layout 'master'

  def index
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  	@recipes_by_date = Recipe.all
  end
end
