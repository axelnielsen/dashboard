require 'test_helper'

class StartFemale200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female200mt = start_female200mts(:one)
  end

  test "should get index" do
    get start_female200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female200mt_url
    assert_response :success
  end

  test "should create start_female200mt" do
    assert_difference('StartFemale200mt.count') do
      post start_female200mts_url, params: { start_female200mt: { achievement: @start_female200mt.achievement, an: @start_female200mt.an, athlete: @start_female200mt.athlete, club: @start_female200mt.club, country: @start_female200mt.country, female200mtsHead_id: @start_female200mt.female200mtsHead_id, number: @start_female200mt.number, place: @start_female200mt.place, rail: @start_female200mt.rail, region: @start_female200mt.region } }
    end

    assert_redirected_to start_female200mt_url(StartFemale200mt.last)
  end

  test "should show start_female200mt" do
    get start_female200mt_url(@start_female200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female200mt_url(@start_female200mt)
    assert_response :success
  end

  test "should update start_female200mt" do
    patch start_female200mt_url(@start_female200mt), params: { start_female200mt: { achievement: @start_female200mt.achievement, an: @start_female200mt.an, athlete: @start_female200mt.athlete, club: @start_female200mt.club, country: @start_female200mt.country, female200mtsHead_id: @start_female200mt.female200mtsHead_id, number: @start_female200mt.number, place: @start_female200mt.place, rail: @start_female200mt.rail, region: @start_female200mt.region } }
    assert_redirected_to start_female200mt_url(@start_female200mt)
  end

  test "should destroy start_female200mt" do
    assert_difference('StartFemale200mt.count', -1) do
      delete start_female200mt_url(@start_female200mt)
    end

    assert_redirected_to start_female200mts_url
  end
end
