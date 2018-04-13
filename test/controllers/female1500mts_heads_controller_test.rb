require 'test_helper'

class Female1500mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female1500mts_head = female1500mts_heads(:one)
  end

  test "should get index" do
    get female1500mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_female1500mts_head_url
    assert_response :success
  end

  test "should create female1500mts_head" do
    assert_difference('Female1500mtsHead.count') do
      post female1500mts_heads_url, params: { female1500mts_head: { championship_id: @female1500mts_head.championship_id, fecha: @female1500mts_head.fecha, hora: @female1500mts_head.hora } }
    end

    assert_redirected_to female1500mts_head_url(Female1500mtsHead.last)
  end

  test "should show female1500mts_head" do
    get female1500mts_head_url(@female1500mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_female1500mts_head_url(@female1500mts_head)
    assert_response :success
  end

  test "should update female1500mts_head" do
    patch female1500mts_head_url(@female1500mts_head), params: { female1500mts_head: { championship_id: @female1500mts_head.championship_id, fecha: @female1500mts_head.fecha, hora: @female1500mts_head.hora } }
    assert_redirected_to female1500mts_head_url(@female1500mts_head)
  end

  test "should destroy female1500mts_head" do
    assert_difference('Female1500mtsHead.count', -1) do
      delete female1500mts_head_url(@female1500mts_head)
    end

    assert_redirected_to female1500mts_heads_url
  end
end
