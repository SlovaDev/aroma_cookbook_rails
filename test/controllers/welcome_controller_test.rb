require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "My Cookbook"
  end
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About"
  end
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact"
  end
end
