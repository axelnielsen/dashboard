require 'test_helper'

class Female400mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female400mts_head = female400mts_heads(:one)
  end

  test "should get index" do
    get female400mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_female400mts_head_url
    assert_response :success
  end

  test "should create female400mts_head" do
    assert_difference('Female400mtsHead.count') do
      post female400mts_heads_url, params: { female400mts_head: { championship_id: @female400mts_head.championship_id, fecha: @female400mts_head.fecha, hora: @female400mts_head.hora } }
    end

    assert_redirected_to female400mts_head_url(Female400mtsHead.last)
  end

  test "should show female400mts_head" do
    get female400mts_head_url(@female400mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_female400mts_head_url(@female400mts_head)
    assert_response :success
  end

  test "should update female400mts_head" do
    patch female400mts_head_url(@female400mts_head), params: { female400mts_head: { championship_id: @female400mts_head.championship_id, fecha: @female400mts_head.fecha, hora: @female400mts_head.hora } }
    assert_redirected_to female400mts_head_url(@female400mts_head)
  end

  test "should destroy female400mts_head" do
    assert_difference('Female400mtsHead.count', -1) do
      delete female400mts_head_url(@female400mts_head)
    end

    assert_redirected_to female400mts_heads_url
  end
end
