class EntriesController < ApplicationController

  def create
    @date = Date.today
    @recipe = Recipe.find(params[:recipe_id])
    entry = Entry.create(recipe_id: @recipe.id, entry_date: @date)

    if entry.save
      flash[:notice] = "Recipe added to planner"
    else
      flash[:alert] = "There was a problem, please try again"
    end

  end
end
