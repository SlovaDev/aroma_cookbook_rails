require 'test_helper'

class CuisinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuisine = cuisines(:one)
  end

  test "should exist" do
    assert_equal 1, Cuisine.count
  end
end
