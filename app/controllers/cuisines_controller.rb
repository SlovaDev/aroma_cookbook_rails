class CuisinesController < ApplicationController
  before_action :verify_user

  def index
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    @recipes = @cuisine.recipes.order('created_at DESC')
  end
end
