require 'test_helper'

class AcceulControllerTest < ActionDispatch::IntegrationTest
  test "should get acceul" do
    get acceul_acceul_url
    assert_response :success
  end

end
