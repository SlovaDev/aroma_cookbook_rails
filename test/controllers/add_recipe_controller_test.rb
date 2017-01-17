require 'test_helper'

class AddRecipeControllerTest < ActionController::TestCase
  test "should get show page" do
    get :index
    assert_response :success
    assert_select "title", "Add Recipe"
  end
end
