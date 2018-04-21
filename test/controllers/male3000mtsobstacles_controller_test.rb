require 'test_helper'

class Male3000mtsobstaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male3000mtsobstacle = male3000mtsobstacles(:one)
  end

  test "should get index" do
    get male3000mtsobstacles_url
    assert_response :success
  end

  test "should get new" do
    get new_male3000mtsobstacle_url
    assert_response :success
  end

  test "should create male3000mtsobstacle" do
    assert_difference('Male3000mtsobstacle.count') do
      post male3000mtsobstacles_url, params: { male3000mtsobstacle: { achievement: @male3000mtsobstacle.achievement, an: @male3000mtsobstacle.an, athlete: @male3000mtsobstacle.athlete, club: @male3000mtsobstacle.club, country: @male3000mtsobstacle.country, male3000mtsobstacleHead_id: @male3000mtsobstacle.male3000mtsobstacleHead_id, number: @male3000mtsobstacle.number, place: @male3000mtsobstacle.place, rail: @male3000mtsobstacle.rail, region: @male3000mtsobstacle.region } }
    end

    assert_redirected_to male3000mtsobstacle_url(Male3000mtsobstacle.last)
  end

  test "should show male3000mtsobstacle" do
    get male3000mtsobstacle_url(@male3000mtsobstacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_male3000mtsobstacle_url(@male3000mtsobstacle)
    assert_response :success
  end

  test "should update male3000mtsobstacle" do
    patch male3000mtsobstacle_url(@male3000mtsobstacle), params: { male3000mtsobstacle: { achievement: @male3000mtsobstacle.achievement, an: @male3000mtsobstacle.an, athlete: @male3000mtsobstacle.athlete, club: @male3000mtsobstacle.club, country: @male3000mtsobstacle.country, male3000mtsobstacleHead_id: @male3000mtsobstacle.male3000mtsobstacleHead_id, number: @male3000mtsobstacle.number, place: @male3000mtsobstacle.place, rail: @male3000mtsobstacle.rail, region: @male3000mtsobstacle.region } }
    assert_redirected_to male3000mtsobstacle_url(@male3000mtsobstacle)
  end

  test "should destroy male3000mtsobstacle" do
    assert_difference('Male3000mtsobstacle.count', -1) do
      delete male3000mtsobstacle_url(@male3000mtsobstacle)
    end

    assert_redirected_to male3000mtsobstacles_url
  end
end
