require 'test_helper'

class ModifControllerTest < ActionDispatch::IntegrationTest
  test "should get modif" do
    get modif_modif_url
    assert_response :success
  end

end
