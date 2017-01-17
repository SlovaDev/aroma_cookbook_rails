require 'test_helper'

class SearchRecipeControllerTest < ActionController::TestCase
  test "should get show page" do
    get :index
    assert_response :success
    assert_select "title", "Search Recipe"
  end
end
