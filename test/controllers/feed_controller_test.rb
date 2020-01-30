require 'test_helper'

class FeedControllerTest < ActionDispatch::IntegrationTest
  test "should get recently_viewed" do
    get feed_recently_viewed_url
    assert_response :success
  end

  test "should get liked" do
    get feed_liked_url
    assert_response :success
  end

  test "should get feed" do
    get feed_feed_url
    assert_response :success
  end

end
