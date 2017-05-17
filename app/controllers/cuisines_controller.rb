class CuisinesController < ApplicationController
  layout 'master'

  before_action :verify_user

  def index
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    @recipes = @cuisine.recipes.order('created_at DESC').page(params[:page]).per(7)
    puts params
  end
end
