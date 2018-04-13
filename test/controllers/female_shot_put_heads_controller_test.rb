require 'test_helper'

class FemaleShotPutHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female_shot_put_head = female_shot_put_heads(:one)
  end

  test "should get index" do
    get female_shot_put_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_female_shot_put_head_url
    assert_response :success
  end

  test "should create female_shot_put_head" do
    assert_difference('FemaleShotPutHead.count') do
      post female_shot_put_heads_url, params: { female_shot_put_head: { championship_id: @female_shot_put_head.championship_id, fecha: @female_shot_put_head.fecha, hora: @female_shot_put_head.hora } }
    end

    assert_redirected_to female_shot_put_head_url(FemaleShotPutHead.last)
  end

  test "should show female_shot_put_head" do
    get female_shot_put_head_url(@female_shot_put_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_female_shot_put_head_url(@female_shot_put_head)
    assert_response :success
  end

  test "should update female_shot_put_head" do
    patch female_shot_put_head_url(@female_shot_put_head), params: { female_shot_put_head: { championship_id: @female_shot_put_head.championship_id, fecha: @female_shot_put_head.fecha, hora: @female_shot_put_head.hora } }
    assert_redirected_to female_shot_put_head_url(@female_shot_put_head)
  end

  test "should destroy female_shot_put_head" do
    assert_difference('FemaleShotPutHead.count', -1) do
      delete female_shot_put_head_url(@female_shot_put_head)
    end

    assert_redirected_to female_shot_put_heads_url
  end
end
