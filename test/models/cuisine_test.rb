require 'test_helper'

class CuisineTest < ActiveSupport::TestCase
  test "exists" do
    assert_equal 1, Cuisine.count
  end

  test "has a name" do
    assert_equal "Appetizer", Cuisine.first.name
  end
end
