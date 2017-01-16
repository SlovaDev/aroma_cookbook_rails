require 'test_helper'

class SearchRecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get show page" do
    get search_recipe_index_url
    assert_response :success
    assert_select "title", "Search Recipe"
  end
end
