require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "check recipe count" do
    assert_equal 2, Recipe.count
  end

  test "has a name" do
    assert_equal "Artichoke Dip", recipes(:one).name
  end

  test "belongs to cuisine" do
    assert_equal 1, recipes(:one).cuisine_id
  end
end
