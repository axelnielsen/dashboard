require 'test_helper'

class FemalethrowingDiscHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @femalethrowing_disc_head = femalethrowing_disc_heads(:one)
  end

  test "should get index" do
    get femalethrowing_disc_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_femalethrowing_disc_head_url
    assert_response :success
  end

  test "should create femalethrowing_disc_head" do
    assert_difference('FemalethrowingDiscHead.count') do
      post femalethrowing_disc_heads_url, params: { femalethrowing_disc_head: { championship_id: @femalethrowing_disc_head.championship_id, fecha: @femalethrowing_disc_head.fecha, hora: @femalethrowing_disc_head.hora } }
    end

    assert_redirected_to femalethrowing_disc_head_url(FemalethrowingDiscHead.last)
  end

  test "should show femalethrowing_disc_head" do
    get femalethrowing_disc_head_url(@femalethrowing_disc_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_femalethrowing_disc_head_url(@femalethrowing_disc_head)
    assert_response :success
  end

  test "should update femalethrowing_disc_head" do
    patch femalethrowing_disc_head_url(@femalethrowing_disc_head), params: { femalethrowing_disc_head: { championship_id: @femalethrowing_disc_head.championship_id, fecha: @femalethrowing_disc_head.fecha, hora: @femalethrowing_disc_head.hora } }
    assert_redirected_to femalethrowing_disc_head_url(@femalethrowing_disc_head)
  end

  test "should destroy femalethrowing_disc_head" do
    assert_difference('FemalethrowingDiscHead.count', -1) do
      delete femalethrowing_disc_head_url(@femalethrowing_disc_head)
    end

    assert_redirected_to femalethrowing_disc_heads_url
  end
end
