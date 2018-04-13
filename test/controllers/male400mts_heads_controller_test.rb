require 'test_helper'

class Male400mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male400mts_head = male400mts_heads(:one)
  end

  test "should get index" do
    get male400mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_male400mts_head_url
    assert_response :success
  end

  test "should create male400mts_head" do
    assert_difference('Male400mtsHead.count') do
      post male400mts_heads_url, params: { male400mts_head: { championship_id: @male400mts_head.championship_id, fecha: @male400mts_head.fecha, hora: @male400mts_head.hora } }
    end

    assert_redirected_to male400mts_head_url(Male400mtsHead.last)
  end

  test "should show male400mts_head" do
    get male400mts_head_url(@male400mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_male400mts_head_url(@male400mts_head)
    assert_response :success
  end

  test "should update male400mts_head" do
    patch male400mts_head_url(@male400mts_head), params: { male400mts_head: { championship_id: @male400mts_head.championship_id, fecha: @male400mts_head.fecha, hora: @male400mts_head.hora } }
    assert_redirected_to male400mts_head_url(@male400mts_head)
  end

  test "should destroy male400mts_head" do
    assert_difference('Male400mtsHead.count', -1) do
      delete male400mts_head_url(@male400mts_head)
    end

    assert_redirected_to male400mts_heads_url
  end
end
