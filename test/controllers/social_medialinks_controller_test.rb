require 'test_helper'

class SocialMedialinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_medialink = social_medialinks(:one)
  end

  test "should get index" do
    get social_medialinks_url
    assert_response :success
  end

  test "should get new" do
    get new_social_medialink_url
    assert_response :success
  end

  test "should create social_medialink" do
    assert_difference('SocialMedialink.count') do
      post social_medialinks_url, params: { social_medialink: {  } }
    end

    assert_redirected_to social_medialink_url(SocialMedialink.last)
  end

  test "should show social_medialink" do
    get social_medialink_url(@social_medialink)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_medialink_url(@social_medialink)
    assert_response :success
  end

  test "should update social_medialink" do
    patch social_medialink_url(@social_medialink), params: { social_medialink: {  } }
    assert_redirected_to social_medialink_url(@social_medialink)
  end

  test "should destroy social_medialink" do
    assert_difference('SocialMedialink.count', -1) do
      delete social_medialink_url(@social_medialink)
    end

    assert_redirected_to social_medialinks_url
  end
end
