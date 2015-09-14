require 'test_helper'

class ClientAppControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
