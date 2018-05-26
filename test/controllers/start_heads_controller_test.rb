require 'test_helper'

class StartHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_head = start_heads(:one)
  end

  test "should get index" do
    get start_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_start_head_url
    assert_response :success
  end

  test "should create start_head" do
    assert_difference('StartHead.count') do
      post start_heads_url, params: { start_head: { category_id: @start_head.category_id, competition_id: @start_head.competition_id, fecha: @start_head.fecha, hora: @start_head.hora, serie: @start_head.serie, sex_id: @start_head.sex_id, sport_id: @start_head.sport_id } }
    end

    assert_redirected_to start_head_url(StartHead.last)
  end

  test "should show start_head" do
    get start_head_url(@start_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_head_url(@start_head)
    assert_response :success
  end

  test "should update start_head" do
    patch start_head_url(@start_head), params: { start_head: { category_id: @start_head.category_id, competition_id: @start_head.competition_id, fecha: @start_head.fecha, hora: @start_head.hora, serie: @start_head.serie, sex_id: @start_head.sex_id, sport_id: @start_head.sport_id } }
    assert_redirected_to start_head_url(@start_head)
  end

  test "should destroy start_head" do
    assert_difference('StartHead.count', -1) do
      delete start_head_url(@start_head)
    end

    assert_redirected_to start_heads_url
  end
end
