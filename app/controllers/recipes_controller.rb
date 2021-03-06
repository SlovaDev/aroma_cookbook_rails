class RecipesController < ApplicationController
  layout 'master'
  before_action :authenticate_user!
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :set_cuisine, only: :destroy

  def show
    @user = current_user
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user

    if @recipe.save
      redirect_to @recipe
      flash[:notice] = t('recipes.save.success', recipe: @recipe.name)
    else
      flash.now[:alert] = t('recipes.save.failure', recipe: @recipe.name)
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update_attributes(recipe_params)
      redirect_to @recipe
      flash[:notice] = t('recipes.update.success', recipe: @recipe.name)
    else
      flash.now[:alert] = t('recipes.save.failure', recipe: @recipe.name)
      render :edit
    end
  end

  def destroy
    if @recipe.destroy
      if params[:from]=='recipe_show'
        redirect_to cuisine_path(@recipe_cuisine)
        flash[:notice] = t('recipes.delete.success', recipe: @recipe.name)
      end
    else
      flash.now[:alert] = t('recipes.delete.failure', recipe: @recipe.name)
    end
  end

  respond_to do |format|
    format.html
    format.js
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def set_cuisine
    @recipe_cuisine = Recipe.find(params[:id]).cuisine_id
  end

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine_id, :ingredients_attributes => [:id, :quantity, :measure, :item, :_destroy], :directions_attributes => [:id, :direction, :_destroy])
  end
end
