require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @cuisine = cuisines(:one)
    @recipe = recipes(:one)
  end

  test "should not show recipe for unauthenticated users" do
    get :show, params: { id: @recipe.id }
    assert_response :redirect
  end

  test "should show recipe for authenticated users" do
    sign_in @user
    get :show, params: { id: @recipe.id }
    assert_response :success
  end

  test "should not get new recipe for unauthenticated users" do
    get :new, params: { cuisine_id: @cuisine.id }
    assert_response :redirect
  end

  test "should get new recipe for authenticated users" do
    sign_in @user
    get :new, params: { cuisine_id: @cuisine.id }
    assert_response :success
  end

  test "should not create recipe for unauthenticated users" do
    post :create, params: { cuisine_id: @cuisine.id, recipe: { name: 'Some recipe'} }
    assert_response :redirect
  end

  test "should create recipe for authenticated users" do
    sign_in @user
    assert_difference('Recipe.count') do
      post :create, params: { recipe: { name: 'Some recipe', cuisine_id: @cuisine.id, user_id: @user} }
    end
  end

  test "should not edit recipe for unauthenticated users" do
    get :edit, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_response :redirect
  end

  test "should edit recipe for authenticated users" do
    sign_in @user
    get :edit, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_response :success
  end

  test "should not update recipe for unauthenticated users" do
    put :update, params: { id: @recipe.id, recipe: { name: "New recipe", cuisine_id: @cuisine.id } }
    assert_response :redirect
  end

  test "should update recipe for authenticated users" do
    sign_in @user
    patch :update, params: { id: @recipe.id, recipe: { name: "New recipe", cuisine_id: @cuisine.id } }
    assert_response :success
  end

  test "should not delete recipe for unauthenticated users" do
    delete :destroy, params: { cuisine_id: @cuisine.id, id: @recipe.id }
    assert_response :redirect
  end

  test "should delete recipe for authenticated users" do
    sign_in @user
    delete :destroy, format: :js, params: { id: @recipe.id }
    assert_response :success
  end
end
