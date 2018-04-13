require 'test_helper'

class ShotPutHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shot_put_head = shot_put_heads(:one)
  end

  test "should get index" do
    get shot_put_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_shot_put_head_url
    assert_response :success
  end

  test "should create shot_put_head" do
    assert_difference('ShotPutHead.count') do
      post shot_put_heads_url, params: { shot_put_head: { championship_id: @shot_put_head.championship_id, fecha: @shot_put_head.fecha, hora: @shot_put_head.hora } }
    end

    assert_redirected_to shot_put_head_url(ShotPutHead.last)
  end

  test "should show shot_put_head" do
    get shot_put_head_url(@shot_put_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_shot_put_head_url(@shot_put_head)
    assert_response :success
  end

  test "should update shot_put_head" do
    patch shot_put_head_url(@shot_put_head), params: { shot_put_head: { championship_id: @shot_put_head.championship_id, fecha: @shot_put_head.fecha, hora: @shot_put_head.hora } }
    assert_redirected_to shot_put_head_url(@shot_put_head)
  end

  test "should destroy shot_put_head" do
    assert_difference('ShotPutHead.count', -1) do
      delete shot_put_head_url(@shot_put_head)
    end

    assert_redirected_to shot_put_heads_url
  end
end
