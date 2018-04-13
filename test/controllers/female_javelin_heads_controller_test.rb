require 'test_helper'

class FemaleJavelinHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female_javelin_head = female_javelin_heads(:one)
  end

  test "should get index" do
    get female_javelin_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_female_javelin_head_url
    assert_response :success
  end

  test "should create female_javelin_head" do
    assert_difference('FemaleJavelinHead.count') do
      post female_javelin_heads_url, params: { female_javelin_head: { championship_id: @female_javelin_head.championship_id, fecha: @female_javelin_head.fecha, hora: @female_javelin_head.hora } }
    end

    assert_redirected_to female_javelin_head_url(FemaleJavelinHead.last)
  end

  test "should show female_javelin_head" do
    get female_javelin_head_url(@female_javelin_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_female_javelin_head_url(@female_javelin_head)
    assert_response :success
  end

  test "should update female_javelin_head" do
    patch female_javelin_head_url(@female_javelin_head), params: { female_javelin_head: { championship_id: @female_javelin_head.championship_id, fecha: @female_javelin_head.fecha, hora: @female_javelin_head.hora } }
    assert_redirected_to female_javelin_head_url(@female_javelin_head)
  end

  test "should destroy female_javelin_head" do
    assert_difference('FemaleJavelinHead.count', -1) do
      delete female_javelin_head_url(@female_javelin_head)
    end

    assert_redirected_to female_javelin_heads_url
  end
end
