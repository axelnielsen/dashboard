require 'test_helper'

class MaleShotPutHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_shot_put_head = male_shot_put_heads(:one)
  end

  test "should get index" do
    get male_shot_put_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_male_shot_put_head_url
    assert_response :success
  end

  test "should create male_shot_put_head" do
    assert_difference('MaleShotPutHead.count') do
      post male_shot_put_heads_url, params: { male_shot_put_head: { championship_id: @male_shot_put_head.championship_id, fecha: @male_shot_put_head.fecha, hora: @male_shot_put_head.hora } }
    end

    assert_redirected_to male_shot_put_head_url(MaleShotPutHead.last)
  end

  test "should show male_shot_put_head" do
    get male_shot_put_head_url(@male_shot_put_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_shot_put_head_url(@male_shot_put_head)
    assert_response :success
  end

  test "should update male_shot_put_head" do
    patch male_shot_put_head_url(@male_shot_put_head), params: { male_shot_put_head: { championship_id: @male_shot_put_head.championship_id, fecha: @male_shot_put_head.fecha, hora: @male_shot_put_head.hora } }
    assert_redirected_to male_shot_put_head_url(@male_shot_put_head)
  end

  test "should destroy male_shot_put_head" do
    assert_difference('MaleShotPutHead.count', -1) do
      delete male_shot_put_head_url(@male_shot_put_head)
    end

    assert_redirected_to male_shot_put_heads_url
  end
end
