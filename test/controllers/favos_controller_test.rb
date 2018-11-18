require 'test_helper'

class FavosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favo = favos(:one)
  end

  test "should get index" do
    get favos_url
    assert_response :success
  end

  test "should get new" do
    get new_favo_url
    assert_response :success
  end

  test "should create favo" do
    assert_difference('Favo.count') do
      post favos_url, params: { favo: { tweet_id: @favo.tweet_id, user_id: @favo.user_id } }
    end

    assert_redirected_to favo_url(Favo.last)
  end

  test "should show favo" do
    get favo_url(@favo)
    assert_response :success
  end

  test "should get edit" do
    get edit_favo_url(@favo)
    assert_response :success
  end

  test "should update favo" do
    patch favo_url(@favo), params: { favo: { tweet_id: @favo.tweet_id, user_id: @favo.user_id } }
    assert_redirected_to favo_url(@favo)
  end

  test "should destroy favo" do
    assert_difference('Favo.count', -1) do
      delete favo_url(@favo)
    end

    assert_redirected_to favos_url
  end
end
