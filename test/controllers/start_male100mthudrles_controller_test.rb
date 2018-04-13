require 'test_helper'

class StartMale100mthudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male100mthudrle = start_male100mthudrles(:one)
  end

  test "should get index" do
    get start_male100mthudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male100mthudrle_url
    assert_response :success
  end

  test "should create start_male100mthudrle" do
    assert_difference('StartMale100mthudrle.count') do
      post start_male100mthudrles_url, params: { start_male100mthudrle: { achievement: @start_male100mthudrle.achievement, an: @start_male100mthudrle.an, athlete: @start_male100mthudrle.athlete, club: @start_male100mthudrle.club, country: @start_male100mthudrle.country, male100mthudresHead_id: @start_male100mthudrle.male100mthudresHead_id, number: @start_male100mthudrle.number, place: @start_male100mthudrle.place, rail: @start_male100mthudrle.rail, region: @start_male100mthudrle.region } }
    end

    assert_redirected_to start_male100mthudrle_url(StartMale100mthudrle.last)
  end

  test "should show start_male100mthudrle" do
    get start_male100mthudrle_url(@start_male100mthudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male100mthudrle_url(@start_male100mthudrle)
    assert_response :success
  end

  test "should update start_male100mthudrle" do
    patch start_male100mthudrle_url(@start_male100mthudrle), params: { start_male100mthudrle: { achievement: @start_male100mthudrle.achievement, an: @start_male100mthudrle.an, athlete: @start_male100mthudrle.athlete, club: @start_male100mthudrle.club, country: @start_male100mthudrle.country, male100mthudresHead_id: @start_male100mthudrle.male100mthudresHead_id, number: @start_male100mthudrle.number, place: @start_male100mthudrle.place, rail: @start_male100mthudrle.rail, region: @start_male100mthudrle.region } }
    assert_redirected_to start_male100mthudrle_url(@start_male100mthudrle)
  end

  test "should destroy start_male100mthudrle" do
    assert_difference('StartMale100mthudrle.count', -1) do
      delete start_male100mthudrle_url(@start_male100mthudrle)
    end

    assert_redirected_to start_male100mthudrles_url
  end
end
