require 'test_helper'

class LikehandleControllerTest < ActionDispatch::IntegrationTest
  test "should get like" do
    get likehandle_like_url
    assert_response :success
  end

  test "should get dislike" do
    get likehandle_dislike_url
    assert_response :success
  end

end
