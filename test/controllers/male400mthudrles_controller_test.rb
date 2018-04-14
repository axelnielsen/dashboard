require 'test_helper'

class Male400mthudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male400mthudrle = male400mthudrles(:one)
  end

  test "should get index" do
    get male400mthudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_male400mthudrle_url
    assert_response :success
  end

  test "should create male400mthudrle" do
    assert_difference('Male400mthudrle.count') do
      post male400mthudrles_url, params: { male400mthudrle: { achievement: @male400mthudrle.achievement, an: @male400mthudrle.an, athlete: @male400mthudrle.athlete, club: @male400mthudrle.club, country: @male400mthudrle.country, male400mthudrleHead_id: @male400mthudrle.male400mthudrleHead_id, number: @male400mthudrle.number, place: @male400mthudrle.place, rail: @male400mthudrle.rail, region: @male400mthudrle.region } }
    end

    assert_redirected_to male400mthudrle_url(Male400mthudrle.last)
  end

  test "should show male400mthudrle" do
    get male400mthudrle_url(@male400mthudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_male400mthudrle_url(@male400mthudrle)
    assert_response :success
  end

  test "should update male400mthudrle" do
    patch male400mthudrle_url(@male400mthudrle), params: { male400mthudrle: { achievement: @male400mthudrle.achievement, an: @male400mthudrle.an, athlete: @male400mthudrle.athlete, club: @male400mthudrle.club, country: @male400mthudrle.country, male400mthudrleHead_id: @male400mthudrle.male400mthudrleHead_id, number: @male400mthudrle.number, place: @male400mthudrle.place, rail: @male400mthudrle.rail, region: @male400mthudrle.region } }
    assert_redirected_to male400mthudrle_url(@male400mthudrle)
  end

  test "should destroy male400mthudrle" do
    assert_difference('Male400mthudrle.count', -1) do
      delete male400mthudrle_url(@male400mthudrle)
    end

    assert_redirected_to male400mthudrles_url
  end
end
