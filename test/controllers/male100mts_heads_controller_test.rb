require 'test_helper'

class Male100mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male100mts_head = male100mts_heads(:one)
  end

  test "should get index" do
    get male100mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_male100mts_head_url
    assert_response :success
  end

  test "should create male100mts_head" do
    assert_difference('Male100mtsHead.count') do
      post male100mts_heads_url, params: { male100mts_head: { championship_id: @male100mts_head.championship_id, fecha: @male100mts_head.fecha, hora: @male100mts_head.hora } }
    end

    assert_redirected_to male100mts_head_url(Male100mtsHead.last)
  end

  test "should show male100mts_head" do
    get male100mts_head_url(@male100mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_male100mts_head_url(@male100mts_head)
    assert_response :success
  end

  test "should update male100mts_head" do
    patch male100mts_head_url(@male100mts_head), params: { male100mts_head: { championship_id: @male100mts_head.championship_id, fecha: @male100mts_head.fecha, hora: @male100mts_head.hora } }
    assert_redirected_to male100mts_head_url(@male100mts_head)
  end

  test "should destroy male100mts_head" do
    assert_difference('Male100mtsHead.count', -1) do
      delete male100mts_head_url(@male100mts_head)
    end

    assert_redirected_to male100mts_heads_url
  end
end
