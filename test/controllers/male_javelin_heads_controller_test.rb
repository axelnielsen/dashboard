require 'test_helper'

class MaleJavelinHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_javelin_head = male_javelin_heads(:one)
  end

  test "should get index" do
    get male_javelin_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_male_javelin_head_url
    assert_response :success
  end

  test "should create male_javelin_head" do
    assert_difference('MaleJavelinHead.count') do
      post male_javelin_heads_url, params: { male_javelin_head: { championship_id: @male_javelin_head.championship_id, fecha: @male_javelin_head.fecha, hora: @male_javelin_head.hora } }
    end

    assert_redirected_to male_javelin_head_url(MaleJavelinHead.last)
  end

  test "should show male_javelin_head" do
    get male_javelin_head_url(@male_javelin_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_javelin_head_url(@male_javelin_head)
    assert_response :success
  end

  test "should update male_javelin_head" do
    patch male_javelin_head_url(@male_javelin_head), params: { male_javelin_head: { championship_id: @male_javelin_head.championship_id, fecha: @male_javelin_head.fecha, hora: @male_javelin_head.hora } }
    assert_redirected_to male_javelin_head_url(@male_javelin_head)
  end

  test "should destroy male_javelin_head" do
    assert_difference('MaleJavelinHead.count', -1) do
      delete male_javelin_head_url(@male_javelin_head)
    end

    assert_redirected_to male_javelin_heads_url
  end
end
