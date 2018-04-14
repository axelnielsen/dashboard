require 'test_helper'

class Male400mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male400mt = male400mts(:one)
  end

  test "should get index" do
    get male400mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male400mt_url
    assert_response :success
  end

  test "should create male400mt" do
    assert_difference('Male400mt.count') do
      post male400mts_url, params: { male400mt: { achievement: @male400mt.achievement, an: @male400mt.an, athlete: @male400mt.athlete, club: @male400mt.club, country: @male400mt.country, male400mtsHead_id: @male400mt.male400mtsHead_id, number: @male400mt.number, place: @male400mt.place, rail: @male400mt.rail, region: @male400mt.region } }
    end

    assert_redirected_to male400mt_url(Male400mt.last)
  end

  test "should show male400mt" do
    get male400mt_url(@male400mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male400mt_url(@male400mt)
    assert_response :success
  end

  test "should update male400mt" do
    patch male400mt_url(@male400mt), params: { male400mt: { achievement: @male400mt.achievement, an: @male400mt.an, athlete: @male400mt.athlete, club: @male400mt.club, country: @male400mt.country, male400mtsHead_id: @male400mt.male400mtsHead_id, number: @male400mt.number, place: @male400mt.place, rail: @male400mt.rail, region: @male400mt.region } }
    assert_redirected_to male400mt_url(@male400mt)
  end

  test "should destroy male400mt" do
    assert_difference('Male400mt.count', -1) do
      delete male400mt_url(@male400mt)
    end

    assert_redirected_to male400mts_url
  end
end
