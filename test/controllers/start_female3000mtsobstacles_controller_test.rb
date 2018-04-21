require 'test_helper'

class StartFemale3000mtsobstaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female3000mtsobstacle = start_female3000mtsobstacles(:one)
  end

  test "should get index" do
    get start_female3000mtsobstacles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female3000mtsobstacle_url
    assert_response :success
  end

  test "should create start_female3000mtsobstacle" do
    assert_difference('StartFemale3000mtsobstacle.count') do
      post start_female3000mtsobstacles_url, params: { start_female3000mtsobstacle: { achievement: @start_female3000mtsobstacle.achievement, an: @start_female3000mtsobstacle.an, athlete: @start_female3000mtsobstacle.athlete, club: @start_female3000mtsobstacle.club, country: @start_female3000mtsobstacle.country, female3000mtsobstacleStart_id: @start_female3000mtsobstacle.female3000mtsobstacleStart_id, number: @start_female3000mtsobstacle.number, place: @start_female3000mtsobstacle.place, rail: @start_female3000mtsobstacle.rail, region: @start_female3000mtsobstacle.region } }
    end

    assert_redirected_to start_female3000mtsobstacle_url(StartFemale3000mtsobstacle.last)
  end

  test "should show start_female3000mtsobstacle" do
    get start_female3000mtsobstacle_url(@start_female3000mtsobstacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female3000mtsobstacle_url(@start_female3000mtsobstacle)
    assert_response :success
  end

  test "should update start_female3000mtsobstacle" do
    patch start_female3000mtsobstacle_url(@start_female3000mtsobstacle), params: { start_female3000mtsobstacle: { achievement: @start_female3000mtsobstacle.achievement, an: @start_female3000mtsobstacle.an, athlete: @start_female3000mtsobstacle.athlete, club: @start_female3000mtsobstacle.club, country: @start_female3000mtsobstacle.country, female3000mtsobstacleStart_id: @start_female3000mtsobstacle.female3000mtsobstacleStart_id, number: @start_female3000mtsobstacle.number, place: @start_female3000mtsobstacle.place, rail: @start_female3000mtsobstacle.rail, region: @start_female3000mtsobstacle.region } }
    assert_redirected_to start_female3000mtsobstacle_url(@start_female3000mtsobstacle)
  end

  test "should destroy start_female3000mtsobstacle" do
    assert_difference('StartFemale3000mtsobstacle.count', -1) do
      delete start_female3000mtsobstacle_url(@start_female3000mtsobstacle)
    end

    assert_redirected_to start_female3000mtsobstacles_url
  end
end
