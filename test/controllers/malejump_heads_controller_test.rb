require 'test_helper'

class MalejumpHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @malejump_head = malejump_heads(:one)
  end

  test "should get index" do
    get malejump_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_malejump_head_url
    assert_response :success
  end

  test "should create malejump_head" do
    assert_difference('MalejumpHead.count') do
      post malejump_heads_url, params: { malejump_head: { championship_id: @malejump_head.championship_id, fecha: @malejump_head.fecha, hora: @malejump_head.hora } }
    end

    assert_redirected_to malejump_head_url(MalejumpHead.last)
  end

  test "should show malejump_head" do
    get malejump_head_url(@malejump_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_malejump_head_url(@malejump_head)
    assert_response :success
  end

  test "should update malejump_head" do
    patch malejump_head_url(@malejump_head), params: { malejump_head: { championship_id: @malejump_head.championship_id, fecha: @malejump_head.fecha, hora: @malejump_head.hora } }
    assert_redirected_to malejump_head_url(@malejump_head)
  end

  test "should destroy malejump_head" do
    assert_difference('MalejumpHead.count', -1) do
      delete malejump_head_url(@malejump_head)
    end

    assert_redirected_to malejump_heads_url
  end
end
