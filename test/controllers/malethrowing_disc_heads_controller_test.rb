require 'test_helper'

class MalethrowingDiscHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @malethrowing_disc_head = malethrowing_disc_heads(:one)
  end

  test "should get index" do
    get malethrowing_disc_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_malethrowing_disc_head_url
    assert_response :success
  end

  test "should create malethrowing_disc_head" do
    assert_difference('MalethrowingDiscHead.count') do
      post malethrowing_disc_heads_url, params: { malethrowing_disc_head: { championship_id: @malethrowing_disc_head.championship_id, fecha: @malethrowing_disc_head.fecha, hora: @malethrowing_disc_head.hora } }
    end

    assert_redirected_to malethrowing_disc_head_url(MalethrowingDiscHead.last)
  end

  test "should show malethrowing_disc_head" do
    get malethrowing_disc_head_url(@malethrowing_disc_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_malethrowing_disc_head_url(@malethrowing_disc_head)
    assert_response :success
  end

  test "should update malethrowing_disc_head" do
    patch malethrowing_disc_head_url(@malethrowing_disc_head), params: { malethrowing_disc_head: { championship_id: @malethrowing_disc_head.championship_id, fecha: @malethrowing_disc_head.fecha, hora: @malethrowing_disc_head.hora } }
    assert_redirected_to malethrowing_disc_head_url(@malethrowing_disc_head)
  end

  test "should destroy malethrowing_disc_head" do
    assert_difference('MalethrowingDiscHead.count', -1) do
      delete malethrowing_disc_head_url(@malethrowing_disc_head)
    end

    assert_redirected_to malethrowing_disc_heads_url
  end
end
