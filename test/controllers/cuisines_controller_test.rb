require 'test_helper'

class CuisinesControllerTest < ActionController::TestCase
  setup do
    @cuisine = cuisines(:one)
  end

  test "should not get index for unauthenticated users" do
    get :index
    assert_response :redirect
  end

  test "should get index for authenticated users" do
    sign_in users(:one)
    get :index
    assert_response :success
  end

  test "should not get show for unauthenticated users" do
    get :show, params: { id: @cuisine }
    assert_response :redirect
  end

  test "should get show for unauthenticated users" do
    sign_in users(:one)
    get :show, params: { id: @cuisine }
    assert_response :success
    assert_select "title", "Appetizers"
  end

end
