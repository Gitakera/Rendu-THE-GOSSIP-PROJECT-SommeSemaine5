require 'test_helper'

class CommenterControllerTest < ActionDispatch::IntegrationTest
  test "should get commenter" do
    get commenter_commenter_url
    assert_response :success
  end

  test "should get souscommenter" do
    get commenter_souscommenter_url
    assert_response :success
  end

end
