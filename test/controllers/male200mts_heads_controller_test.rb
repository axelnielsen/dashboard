require 'test_helper'

class Male200mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male200mts_head = male200mts_heads(:one)
  end

  test "should get index" do
    get male200mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_male200mts_head_url
    assert_response :success
  end

  test "should create male200mts_head" do
    assert_difference('Male200mtsHead.count') do
      post male200mts_heads_url, params: { male200mts_head: { championship_id: @male200mts_head.championship_id, fecha: @male200mts_head.fecha, hora: @male200mts_head.hora } }
    end

    assert_redirected_to male200mts_head_url(Male200mtsHead.last)
  end

  test "should show male200mts_head" do
    get male200mts_head_url(@male200mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_male200mts_head_url(@male200mts_head)
    assert_response :success
  end

  test "should update male200mts_head" do
    patch male200mts_head_url(@male200mts_head), params: { male200mts_head: { championship_id: @male200mts_head.championship_id, fecha: @male200mts_head.fecha, hora: @male200mts_head.hora } }
    assert_redirected_to male200mts_head_url(@male200mts_head)
  end

  test "should destroy male200mts_head" do
    assert_difference('Male200mtsHead.count', -1) do
      delete male200mts_head_url(@male200mts_head)
    end

    assert_redirected_to male200mts_heads_url
  end
end
