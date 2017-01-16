require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout_linking" do
    get root_path
    assert_template 'welcome/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", cookbook_index_path
    assert_select "a[href=?]", add_recipe_index_path
    assert_select "a[href=?]", search_recipe_index_path
  end
end
