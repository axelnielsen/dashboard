require 'test_helper'

class Female200mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female200mts_head = female200mts_heads(:one)
  end

  test "should get index" do
    get female200mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_female200mts_head_url
    assert_response :success
  end

  test "should create female200mts_head" do
    assert_difference('Female200mtsHead.count') do
      post female200mts_heads_url, params: { female200mts_head: { championship_id: @female200mts_head.championship_id, fecha: @female200mts_head.fecha, hora: @female200mts_head.hora } }
    end

    assert_redirected_to female200mts_head_url(Female200mtsHead.last)
  end

  test "should show female200mts_head" do
    get female200mts_head_url(@female200mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_female200mts_head_url(@female200mts_head)
    assert_response :success
  end

  test "should update female200mts_head" do
    patch female200mts_head_url(@female200mts_head), params: { female200mts_head: { championship_id: @female200mts_head.championship_id, fecha: @female200mts_head.fecha, hora: @female200mts_head.hora } }
    assert_redirected_to female200mts_head_url(@female200mts_head)
  end

  test "should destroy female200mts_head" do
    assert_difference('Female200mtsHead.count', -1) do
      delete female200mts_head_url(@female200mts_head)
    end

    assert_redirected_to female200mts_heads_url
  end
end
