require 'test_helper'

class Male1500mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male1500mts_head = male1500mts_heads(:one)
  end

  test "should get index" do
    get male1500mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_male1500mts_head_url
    assert_response :success
  end

  test "should create male1500mts_head" do
    assert_difference('Male1500mtsHead.count') do
      post male1500mts_heads_url, params: { male1500mts_head: { championship_id: @male1500mts_head.championship_id, fecha: @male1500mts_head.fecha, hora: @male1500mts_head.hora } }
    end

    assert_redirected_to male1500mts_head_url(Male1500mtsHead.last)
  end

  test "should show male1500mts_head" do
    get male1500mts_head_url(@male1500mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_male1500mts_head_url(@male1500mts_head)
    assert_response :success
  end

  test "should update male1500mts_head" do
    patch male1500mts_head_url(@male1500mts_head), params: { male1500mts_head: { championship_id: @male1500mts_head.championship_id, fecha: @male1500mts_head.fecha, hora: @male1500mts_head.hora } }
    assert_redirected_to male1500mts_head_url(@male1500mts_head)
  end

  test "should destroy male1500mts_head" do
    assert_difference('Male1500mtsHead.count', -1) do
      delete male1500mts_head_url(@male1500mts_head)
    end

    assert_redirected_to male1500mts_heads_url
  end
end
