require 'test_helper'

class Start2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start2 = start2s(:one)
  end

  test "should get index" do
    get start2s_url
    assert_response :success
  end

  test "should get new" do
    get new_start2_url
    assert_response :success
  end

  test "should create start2" do
    assert_difference('Start2.count') do
      post start2s_url, params: { start2: { an: @start2.an, athlete: @start2.athlete, bestAchievement: @start2.bestAchievement, club: @start2.club, rail: @start2.rail, region: @start2.region, start_head_id: @start2.start_head_id } }
    end

    assert_redirected_to start2_url(Start2.last)
  end

  test "should show start2" do
    get start2_url(@start2)
    assert_response :success
  end

  test "should get edit" do
    get edit_start2_url(@start2)
    assert_response :success
  end

  test "should update start2" do
    patch start2_url(@start2), params: { start2: { an: @start2.an, athlete: @start2.athlete, bestAchievement: @start2.bestAchievement, club: @start2.club, rail: @start2.rail, region: @start2.region, start_head_id: @start2.start_head_id } }
    assert_redirected_to start2_url(@start2)
  end

  test "should destroy start2" do
    assert_difference('Start2.count', -1) do
      delete start2_url(@start2)
    end

    assert_redirected_to start2s_url
  end
end
