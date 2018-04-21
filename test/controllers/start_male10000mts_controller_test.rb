require 'test_helper'

class StartMale10000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male10000mt = start_male10000mts(:one)
  end

  test "should get index" do
    get start_male10000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male10000mt_url
    assert_response :success
  end

  test "should create start_male10000mt" do
    assert_difference('StartMale10000mt.count') do
      post start_male10000mts_url, params: { start_male10000mt: { achievement: @start_male10000mt.achievement, an: @start_male10000mt.an, athlete: @start_male10000mt.athlete, club: @start_male10000mt.club, country: @start_male10000mt.country, male10000mtStart_id: @start_male10000mt.male10000mtStart_id, number: @start_male10000mt.number, place: @start_male10000mt.place, rail: @start_male10000mt.rail, region: @start_male10000mt.region } }
    end

    assert_redirected_to start_male10000mt_url(StartMale10000mt.last)
  end

  test "should show start_male10000mt" do
    get start_male10000mt_url(@start_male10000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male10000mt_url(@start_male10000mt)
    assert_response :success
  end

  test "should update start_male10000mt" do
    patch start_male10000mt_url(@start_male10000mt), params: { start_male10000mt: { achievement: @start_male10000mt.achievement, an: @start_male10000mt.an, athlete: @start_male10000mt.athlete, club: @start_male10000mt.club, country: @start_male10000mt.country, male10000mtStart_id: @start_male10000mt.male10000mtStart_id, number: @start_male10000mt.number, place: @start_male10000mt.place, rail: @start_male10000mt.rail, region: @start_male10000mt.region } }
    assert_redirected_to start_male10000mt_url(@start_male10000mt)
  end

  test "should destroy start_male10000mt" do
    assert_difference('StartMale10000mt.count', -1) do
      delete start_male10000mt_url(@start_male10000mt)
    end

    assert_redirected_to start_male10000mts_url
  end
end
