require 'test_helper'

class CuisinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuisine = cuisines(:one)
  end

  test "should get index" do
    get cuisines_url
    assert_response :success
  end

  test "should get show" do
    get cuisine_url(@cuisine)
    assert_response :success
    assert_select "title", "Appetizers"
  end
end
