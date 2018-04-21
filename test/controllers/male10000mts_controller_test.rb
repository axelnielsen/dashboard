require 'test_helper'

class Male10000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male10000mt = male10000mts(:one)
  end

  test "should get index" do
    get male10000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male10000mt_url
    assert_response :success
  end

  test "should create male10000mt" do
    assert_difference('Male10000mt.count') do
      post male10000mts_url, params: { male10000mt: { achievement: @male10000mt.achievement, an: @male10000mt.an, athlete: @male10000mt.athlete, club: @male10000mt.club, country: @male10000mt.country, male10000mtHead_id: @male10000mt.male10000mtHead_id, number: @male10000mt.number, place: @male10000mt.place, rail: @male10000mt.rail, region: @male10000mt.region } }
    end

    assert_redirected_to male10000mt_url(Male10000mt.last)
  end

  test "should show male10000mt" do
    get male10000mt_url(@male10000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male10000mt_url(@male10000mt)
    assert_response :success
  end

  test "should update male10000mt" do
    patch male10000mt_url(@male10000mt), params: { male10000mt: { achievement: @male10000mt.achievement, an: @male10000mt.an, athlete: @male10000mt.athlete, club: @male10000mt.club, country: @male10000mt.country, male10000mtHead_id: @male10000mt.male10000mtHead_id, number: @male10000mt.number, place: @male10000mt.place, rail: @male10000mt.rail, region: @male10000mt.region } }
    assert_redirected_to male10000mt_url(@male10000mt)
  end

  test "should destroy male10000mt" do
    assert_difference('Male10000mt.count', -1) do
      delete male10000mt_url(@male10000mt)
    end

    assert_redirected_to male10000mts_url
  end
end
