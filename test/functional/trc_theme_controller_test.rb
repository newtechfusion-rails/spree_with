require 'test_helper'

class TrcThemeControllerTest < ActionController::TestCase
  test "should get newhome" do
    get :newhome
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
