require 'test_helper'

class StartMale3000mtsobstaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male3000mtsobstacle = start_male3000mtsobstacles(:one)
  end

  test "should get index" do
    get start_male3000mtsobstacles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male3000mtsobstacle_url
    assert_response :success
  end

  test "should create start_male3000mtsobstacle" do
    assert_difference('StartMale3000mtsobstacle.count') do
      post start_male3000mtsobstacles_url, params: { start_male3000mtsobstacle: { achievement: @start_male3000mtsobstacle.achievement, an: @start_male3000mtsobstacle.an, athlete: @start_male3000mtsobstacle.athlete, club: @start_male3000mtsobstacle.club, country: @start_male3000mtsobstacle.country, male3000mtsobstacleStart_id: @start_male3000mtsobstacle.male3000mtsobstacleStart_id, number: @start_male3000mtsobstacle.number, place: @start_male3000mtsobstacle.place, rail: @start_male3000mtsobstacle.rail, region: @start_male3000mtsobstacle.region } }
    end

    assert_redirected_to start_male3000mtsobstacle_url(StartMale3000mtsobstacle.last)
  end

  test "should show start_male3000mtsobstacle" do
    get start_male3000mtsobstacle_url(@start_male3000mtsobstacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male3000mtsobstacle_url(@start_male3000mtsobstacle)
    assert_response :success
  end

  test "should update start_male3000mtsobstacle" do
    patch start_male3000mtsobstacle_url(@start_male3000mtsobstacle), params: { start_male3000mtsobstacle: { achievement: @start_male3000mtsobstacle.achievement, an: @start_male3000mtsobstacle.an, athlete: @start_male3000mtsobstacle.athlete, club: @start_male3000mtsobstacle.club, country: @start_male3000mtsobstacle.country, male3000mtsobstacleStart_id: @start_male3000mtsobstacle.male3000mtsobstacleStart_id, number: @start_male3000mtsobstacle.number, place: @start_male3000mtsobstacle.place, rail: @start_male3000mtsobstacle.rail, region: @start_male3000mtsobstacle.region } }
    assert_redirected_to start_male3000mtsobstacle_url(@start_male3000mtsobstacle)
  end

  test "should destroy start_male3000mtsobstacle" do
    assert_difference('StartMale3000mtsobstacle.count', -1) do
      delete start_male3000mtsobstacle_url(@start_male3000mtsobstacle)
    end

    assert_redirected_to start_male3000mtsobstacles_url
  end
end
