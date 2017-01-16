require 'test_helper'

class AddRecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get show page" do
    get add_recipe_index_url
    assert_response :success
    assert_select "title", "Add Recipe"
  end
end
