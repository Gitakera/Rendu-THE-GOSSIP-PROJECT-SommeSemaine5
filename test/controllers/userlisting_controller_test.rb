require 'test_helper'

class UserlistingControllerTest < ActionDispatch::IntegrationTest
  test "should get userlisting" do
    get userlisting_userlisting_url
    assert_response :success
  end

end
