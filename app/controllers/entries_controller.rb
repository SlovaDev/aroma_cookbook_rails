class EntriesController < ApplicationController

  def add_to_cal
    @entry = Entry.create(entry_date: Date.today)

      if @entry.save
        flash[:notice] = 'Recipe was added to calendar.'
        redirect_to request.referer || root_url
      else
        flash[:warning] = 'Recipe could not be added at this time.'
        redirect_to request.referer || root_url
      end
  end

end