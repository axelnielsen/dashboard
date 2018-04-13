require 'test_helper'

class FemalejumpHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @femalejump_head = femalejump_heads(:one)
  end

  test "should get index" do
    get femalejump_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_femalejump_head_url
    assert_response :success
  end

  test "should create femalejump_head" do
    assert_difference('FemalejumpHead.count') do
      post femalejump_heads_url, params: { femalejump_head: { championship_id: @femalejump_head.championship_id, fecha: @femalejump_head.fecha, hora: @femalejump_head.hora } }
    end

    assert_redirected_to femalejump_head_url(FemalejumpHead.last)
  end

  test "should show femalejump_head" do
    get femalejump_head_url(@femalejump_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_femalejump_head_url(@femalejump_head)
    assert_response :success
  end

  test "should update femalejump_head" do
    patch femalejump_head_url(@femalejump_head), params: { femalejump_head: { championship_id: @femalejump_head.championship_id, fecha: @femalejump_head.fecha, hora: @femalejump_head.hora } }
    assert_redirected_to femalejump_head_url(@femalejump_head)
  end

  test "should destroy femalejump_head" do
    assert_difference('FemalejumpHead.count', -1) do
      delete femalejump_head_url(@femalejump_head)
    end

    assert_redirected_to femalejump_heads_url
  end
end
