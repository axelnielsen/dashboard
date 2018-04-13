require 'test_helper'

class Male100mtshurdlesHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male100mtshurdles_head = male100mtshurdles_heads(:one)
  end

  test "should get index" do
    get male100mtshurdles_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_male100mtshurdles_head_url
    assert_response :success
  end

  test "should create male100mtshurdles_head" do
    assert_difference('Male100mtshurdlesHead.count') do
      post male100mtshurdles_heads_url, params: { male100mtshurdles_head: { championship_id: @male100mtshurdles_head.championship_id, fecha: @male100mtshurdles_head.fecha, hora: @male100mtshurdles_head.hora } }
    end

    assert_redirected_to male100mtshurdles_head_url(Male100mtshurdlesHead.last)
  end

  test "should show male100mtshurdles_head" do
    get male100mtshurdles_head_url(@male100mtshurdles_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_male100mtshurdles_head_url(@male100mtshurdles_head)
    assert_response :success
  end

  test "should update male100mtshurdles_head" do
    patch male100mtshurdles_head_url(@male100mtshurdles_head), params: { male100mtshurdles_head: { championship_id: @male100mtshurdles_head.championship_id, fecha: @male100mtshurdles_head.fecha, hora: @male100mtshurdles_head.hora } }
    assert_redirected_to male100mtshurdles_head_url(@male100mtshurdles_head)
  end

  test "should destroy male100mtshurdles_head" do
    assert_difference('Male100mtshurdlesHead.count', -1) do
      delete male100mtshurdles_head_url(@male100mtshurdles_head)
    end

    assert_redirected_to male100mtshurdles_heads_url
  end
end
