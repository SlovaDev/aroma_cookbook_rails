require 'test_helper'

class CookbookControllerTest < ActionDispatch::IntegrationTest
  test "should get show page" do
    get cookbook_index_url
    assert_response :success
    assert_select "title", "My Cookbook"
  end
end
