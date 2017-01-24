class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    binding.pry
    if @recipe.save
      redirect_to @recipe, notice: "Recipe added!"
    else
      flash.now[:alert] = "There was a problem saving the recipe. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update_attributes(recipe_params)
      redirect_to @recipe
    else
      flash.now[:alert] = "There was a problem saving the recipe. Please try again."
      render :edit
    end
  end

  def destroy
    if @recipe.destroy
      redirect_to cuisines_path
    else
      flash.now[:alert] = "There was a problem deleting the recipe. Please try again."
      render :show
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine_id, :ingredients_attributes => [:id, :quantity, :measure, :item, :_destroy], :directions_attributes => [:id, :direction, :_destroy])
  end
end
