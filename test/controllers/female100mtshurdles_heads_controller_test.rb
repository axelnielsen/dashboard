require 'test_helper'

class Female100mtshurdlesHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female100mtshurdles_head = female100mtshurdles_heads(:one)
  end

  test "should get index" do
    get female100mtshurdles_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_female100mtshurdles_head_url
    assert_response :success
  end

  test "should create female100mtshurdles_head" do
    assert_difference('Female100mtshurdlesHead.count') do
      post female100mtshurdles_heads_url, params: { female100mtshurdles_head: { championship_id: @female100mtshurdles_head.championship_id, fecha: @female100mtshurdles_head.fecha, hora: @female100mtshurdles_head.hora } }
    end

    assert_redirected_to female100mtshurdles_head_url(Female100mtshurdlesHead.last)
  end

  test "should show female100mtshurdles_head" do
    get female100mtshurdles_head_url(@female100mtshurdles_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_female100mtshurdles_head_url(@female100mtshurdles_head)
    assert_response :success
  end

  test "should update female100mtshurdles_head" do
    patch female100mtshurdles_head_url(@female100mtshurdles_head), params: { female100mtshurdles_head: { championship_id: @female100mtshurdles_head.championship_id, fecha: @female100mtshurdles_head.fecha, hora: @female100mtshurdles_head.hora } }
    assert_redirected_to female100mtshurdles_head_url(@female100mtshurdles_head)
  end

  test "should destroy female100mtshurdles_head" do
    assert_difference('Female100mtshurdlesHead.count', -1) do
      delete female100mtshurdles_head_url(@female100mtshurdles_head)
    end

    assert_redirected_to female100mtshurdles_heads_url
  end
end
