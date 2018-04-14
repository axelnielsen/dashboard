require 'test_helper'

class Male1500mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male1500mt = male1500mts(:one)
  end

  test "should get index" do
    get male1500mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male1500mt_url
    assert_response :success
  end

  test "should create male1500mt" do
    assert_difference('Male1500mt.count') do
      post male1500mts_url, params: { male1500mt: { achievement: @male1500mt.achievement, an: @male1500mt.an, athlete: @male1500mt.athlete, club: @male1500mt.club, country: @male1500mt.country, male1500mtsHead_id: @male1500mt.male1500mtsHead_id, number: @male1500mt.number, place: @male1500mt.place, rail: @male1500mt.rail, region: @male1500mt.region } }
    end

    assert_redirected_to male1500mt_url(Male1500mt.last)
  end

  test "should show male1500mt" do
    get male1500mt_url(@male1500mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male1500mt_url(@male1500mt)
    assert_response :success
  end

  test "should update male1500mt" do
    patch male1500mt_url(@male1500mt), params: { male1500mt: { achievement: @male1500mt.achievement, an: @male1500mt.an, athlete: @male1500mt.athlete, club: @male1500mt.club, country: @male1500mt.country, male1500mtsHead_id: @male1500mt.male1500mtsHead_id, number: @male1500mt.number, place: @male1500mt.place, rail: @male1500mt.rail, region: @male1500mt.region } }
    assert_redirected_to male1500mt_url(@male1500mt)
  end

  test "should destroy male1500mt" do
    assert_difference('Male1500mt.count', -1) do
      delete male1500mt_url(@male1500mt)
    end

    assert_redirected_to male1500mts_url
  end
end
