require 'test_helper'

class Female3000mtsobstaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female3000mtsobstacle = female3000mtsobstacles(:one)
  end

  test "should get index" do
    get female3000mtsobstacles_url
    assert_response :success
  end

  test "should get new" do
    get new_female3000mtsobstacle_url
    assert_response :success
  end

  test "should create female3000mtsobstacle" do
    assert_difference('Female3000mtsobstacle.count') do
      post female3000mtsobstacles_url, params: { female3000mtsobstacle: { achievement: @female3000mtsobstacle.achievement, an: @female3000mtsobstacle.an, athlete: @female3000mtsobstacle.athlete, club: @female3000mtsobstacle.club, country: @female3000mtsobstacle.country, female3000mtsobstacleHead_id: @female3000mtsobstacle.female3000mtsobstacleHead_id, number: @female3000mtsobstacle.number, place: @female3000mtsobstacle.place, rail: @female3000mtsobstacle.rail, region: @female3000mtsobstacle.region } }
    end

    assert_redirected_to female3000mtsobstacle_url(Female3000mtsobstacle.last)
  end

  test "should show female3000mtsobstacle" do
    get female3000mtsobstacle_url(@female3000mtsobstacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_female3000mtsobstacle_url(@female3000mtsobstacle)
    assert_response :success
  end

  test "should update female3000mtsobstacle" do
    patch female3000mtsobstacle_url(@female3000mtsobstacle), params: { female3000mtsobstacle: { achievement: @female3000mtsobstacle.achievement, an: @female3000mtsobstacle.an, athlete: @female3000mtsobstacle.athlete, club: @female3000mtsobstacle.club, country: @female3000mtsobstacle.country, female3000mtsobstacleHead_id: @female3000mtsobstacle.female3000mtsobstacleHead_id, number: @female3000mtsobstacle.number, place: @female3000mtsobstacle.place, rail: @female3000mtsobstacle.rail, region: @female3000mtsobstacle.region } }
    assert_redirected_to female3000mtsobstacle_url(@female3000mtsobstacle)
  end

  test "should destroy female3000mtsobstacle" do
    assert_difference('Female3000mtsobstacle.count', -1) do
      delete female3000mtsobstacle_url(@female3000mtsobstacle)
    end

    assert_redirected_to female3000mtsobstacles_url
  end
end
