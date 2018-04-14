require 'test_helper'

class Male200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male200mt = male200mts(:one)
  end

  test "should get index" do
    get male200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male200mt_url
    assert_response :success
  end

  test "should create male200mt" do
    assert_difference('Male200mt.count') do
      post male200mts_url, params: { male200mt: { achievement: @male200mt.achievement, an: @male200mt.an, athlete: @male200mt.athlete, club: @male200mt.club, country: @male200mt.country, male200mtsHead_id: @male200mt.male200mtsHead_id, number: @male200mt.number, place: @male200mt.place, rail: @male200mt.rail, region: @male200mt.region } }
    end

    assert_redirected_to male200mt_url(Male200mt.last)
  end

  test "should show male200mt" do
    get male200mt_url(@male200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male200mt_url(@male200mt)
    assert_response :success
  end

  test "should update male200mt" do
    patch male200mt_url(@male200mt), params: { male200mt: { achievement: @male200mt.achievement, an: @male200mt.an, athlete: @male200mt.athlete, club: @male200mt.club, country: @male200mt.country, male200mtsHead_id: @male200mt.male200mtsHead_id, number: @male200mt.number, place: @male200mt.place, rail: @male200mt.rail, region: @male200mt.region } }
    assert_redirected_to male200mt_url(@male200mt)
  end

  test "should destroy male200mt" do
    assert_difference('Male200mt.count', -1) do
      delete male200mt_url(@male200mt)
    end

    assert_redirected_to male200mts_url
  end
end
