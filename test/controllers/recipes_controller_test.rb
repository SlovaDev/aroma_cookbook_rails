require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @cuisine = cuisines(:one)
    @recipe = recipes(:one)
  end

  test "should not show recipe for unauthenticated users" do
    get :show, params: { cuisine_id: @recipe.cuisine_id, id: @recipe.id }
    assert_response :redirect
  end

  test "should show recipe for authenticated users" do
    sign_in users(:one)
    get :show, params: { cuisine_id: @recipe.cuisine_id, id: @recipe.id }
    assert_response :success
  end

  test "should not get new recipe for unauthenticated users" do
    get :new, params: { cuisine_id: @cuisine.id }
    assert_response :redirect
  end

  test "should get new recipe for authenticated users" do
    sign_in users(:one)
    get :new, params: { cuisine_id: @cuisine.id }
    assert_response :success
  end

  test "should not create recipe for unauthenticated users" do
    post :create, params: { cuisine_id: @cuisine.id, recipe: { name: 'Some recipe'} }
    assert_response :redirect
  end

  test "should create recipe for authenticated users" do
    sign_in users(:one)
    assert_difference('Recipe.count') do
      post :create, params: { cuisine_id: @cuisine.id, recipe: { name: 'Some recipe'} }
    end
  end

  test "should not edit recipe for unauthenticated users" do
    get :edit, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_response :redirect
  end

  test "should edit recipe for authenticated users" do
    sign_in users(:one)
    get :edit, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_response :success
  end

  test "should not update recipe for unauthenticated users" do
    put :update, params: { cuisine_id: @cuisine.id, id: @recipe.id, recipe: { name: "New recipe" } }
    assert_response :redirect
  end

  test "should update recipe for authenticated users" do
    sign_in users(:one)
    put :update, params: { cuisine_id: @cuisine.id, id: @recipe.id, recipe: { name: "New recipe" } }
    assert_redirected_to cuisine_recipe_path(@cuisine, @recipe)
  end

  test "should not delete recipe for unauthenticated users" do
    delete :destroy, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_response :redirect
  end

  test "should delete recipe for authenticated users" do
    sign_in users(:one)
    delete :destroy, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_redirected_to cuisine_path(@cuisine)
  end
end
