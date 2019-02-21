require 'test_helper'

class DeleteControllerTest < ActionDispatch::IntegrationTest
  test "should get delete" do
    get delete_delete_url
    assert_response :success
  end

end
