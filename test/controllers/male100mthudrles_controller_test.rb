require 'test_helper'

class Male100mthudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male100mthudrle = male100mthudrles(:one)
  end

  test "should get index" do
    get male100mthudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_male100mthudrle_url
    assert_response :success
  end

  test "should create male100mthudrle" do
    assert_difference('Male100mthudrle.count') do
      post male100mthudrles_url, params: { male100mthudrle: { achievement: @male100mthudrle.achievement, an: @male100mthudrle.an, athlete: @male100mthudrle.athlete, club: @male100mthudrle.club, country: @male100mthudrle.country, male100mthudrleHead_id: @male100mthudrle.male100mthudrleHead_id, number: @male100mthudrle.number, place: @male100mthudrle.place, rail: @male100mthudrle.rail, region: @male100mthudrle.region } }
    end

    assert_redirected_to male100mthudrle_url(Male100mthudrle.last)
  end

  test "should show male100mthudrle" do
    get male100mthudrle_url(@male100mthudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_male100mthudrle_url(@male100mthudrle)
    assert_response :success
  end

  test "should update male100mthudrle" do
    patch male100mthudrle_url(@male100mthudrle), params: { male100mthudrle: { achievement: @male100mthudrle.achievement, an: @male100mthudrle.an, athlete: @male100mthudrle.athlete, club: @male100mthudrle.club, country: @male100mthudrle.country, male100mthudrleHead_id: @male100mthudrle.male100mthudrleHead_id, number: @male100mthudrle.number, place: @male100mthudrle.place, rail: @male100mthudrle.rail, region: @male100mthudrle.region } }
    assert_redirected_to male100mthudrle_url(@male100mthudrle)
  end

  test "should destroy male100mthudrle" do
    assert_difference('Male100mthudrle.count', -1) do
      delete male100mthudrle_url(@male100mthudrle)
    end

    assert_redirected_to male100mthudrles_url
  end
end
