class RecipesController < ApplicationController
  before_action :verify_user
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :set_cuisine, only: [:new, :create, :destroy]

  def show
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.directions.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.cuisine = @cuisine
    @recipe.user = current_user
    
    if @recipe.save
      redirect_to cuisine_recipe_url(@recipe.cuisine_id, @recipe)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to cuisine_recipe_url(@recipe.cuisine_id, @recipe)
    else
      render 'edit'
    end
  end

  def destroy
    if @recipe.destroy
      redirect_to cuisine_url(@cuisine)
    else
      flash[:alert] = "There was a problem deleting the recipe. Please try again."
    end
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def set_cuisine
    @cuisine = Cuisine.find(params[:cuisine_id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :cuisine_id, ingredients_attributes: [:id, :item, :quantity, :measure, :_destroy], directions_attributes: [:id, :direction, :_destroy])
  end
end
