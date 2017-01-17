require 'test_helper'

class CookbookControllerTest < ActionController::TestCase
  test "should get show page" do
    get :index
    assert_response :success
    assert_select "title", "My Cookbook"
  end
end
