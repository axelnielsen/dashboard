require 'test_helper'

class Female100mtsHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female100mts_head = female100mts_heads(:one)
  end

  test "should get index" do
    get female100mts_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_female100mts_head_url
    assert_response :success
  end

  test "should create female100mts_head" do
    assert_difference('Female100mtsHead.count') do
      post female100mts_heads_url, params: { female100mts_head: { championship_id: @female100mts_head.championship_id, fecha: @female100mts_head.fecha, hora: @female100mts_head.hora } }
    end

    assert_redirected_to female100mts_head_url(Female100mtsHead.last)
  end

  test "should show female100mts_head" do
    get female100mts_head_url(@female100mts_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_female100mts_head_url(@female100mts_head)
    assert_response :success
  end

  test "should update female100mts_head" do
    patch female100mts_head_url(@female100mts_head), params: { female100mts_head: { championship_id: @female100mts_head.championship_id, fecha: @female100mts_head.fecha, hora: @female100mts_head.hora } }
    assert_redirected_to female100mts_head_url(@female100mts_head)
  end

  test "should destroy female100mts_head" do
    assert_difference('Female100mtsHead.count', -1) do
      delete female100mts_head_url(@female100mts_head)
    end

    assert_redirected_to female100mts_heads_url
  end
end
