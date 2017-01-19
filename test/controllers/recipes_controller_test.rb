require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @cuisine = cuisines(:one)
    @recipe = recipes(:one)
  end

  test "should get new recipe" do
    get :new, params: { cuisine_id: @cuisine.id }
    assert_response :success
  end

  test "should show recipe" do
    get :show, params: { cuisine_id: @recipe.cuisine_id, id: @recipe.id }
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, params: { cuisine_id: @cuisine.id, recipe: { name: 'Some recipe'} }
    end
  end

  test "should edit recipe" do
    get :edit, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_response :success
  end

  test "should update recipe" do
    put :update, params: { cuisine_id: @cuisine.id, id: @recipe.id, recipe: { name: "New recipe" } }
    assert_redirected_to cuisine_recipe_path(@cuisine, @recipe)
  end
end
