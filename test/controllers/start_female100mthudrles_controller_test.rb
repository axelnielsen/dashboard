require 'test_helper'

class StartFemale100mthudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female100mthudrle = start_female100mthudrles(:one)
  end

  test "should get index" do
    get start_female100mthudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female100mthudrle_url
    assert_response :success
  end

  test "should create start_female100mthudrle" do
    assert_difference('StartFemale100mthudrle.count') do
      post start_female100mthudrles_url, params: { start_female100mthudrle: { achievement: @start_female100mthudrle.achievement, an: @start_female100mthudrle.an, athlete: @start_female100mthudrle.athlete, club: @start_female100mthudrle.club, country: @start_female100mthudrle.country, female100mthudresHead_id: @start_female100mthudrle.female100mthudresHead_id, number: @start_female100mthudrle.number, place: @start_female100mthudrle.place, rail: @start_female100mthudrle.rail, region: @start_female100mthudrle.region } }
    end

    assert_redirected_to start_female100mthudrle_url(StartFemale100mthudrle.last)
  end

  test "should show start_female100mthudrle" do
    get start_female100mthudrle_url(@start_female100mthudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female100mthudrle_url(@start_female100mthudrle)
    assert_response :success
  end

  test "should update start_female100mthudrle" do
    patch start_female100mthudrle_url(@start_female100mthudrle), params: { start_female100mthudrle: { achievement: @start_female100mthudrle.achievement, an: @start_female100mthudrle.an, athlete: @start_female100mthudrle.athlete, club: @start_female100mthudrle.club, country: @start_female100mthudrle.country, female100mthudresHead_id: @start_female100mthudrle.female100mthudresHead_id, number: @start_female100mthudrle.number, place: @start_female100mthudrle.place, rail: @start_female100mthudrle.rail, region: @start_female100mthudrle.region } }
    assert_redirected_to start_female100mthudrle_url(@start_female100mthudrle)
  end

  test "should destroy start_female100mthudrle" do
    assert_difference('StartFemale100mthudrle.count', -1) do
      delete start_female100mthudrle_url(@start_female100mthudrle)
    end

    assert_redirected_to start_female100mthudrles_url
  end
end
