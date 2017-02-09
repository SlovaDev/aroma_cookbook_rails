require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success

    assert_select "title", I18n.t('menu.title')
  end
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", I18n.t('footer.about')
  end
end
