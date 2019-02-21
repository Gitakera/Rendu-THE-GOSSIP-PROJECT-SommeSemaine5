require 'test_helper'

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get createuser" do
    get sign_up_createuser_url
    assert_response :success
  end

end
