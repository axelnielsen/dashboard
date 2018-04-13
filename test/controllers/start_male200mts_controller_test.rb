require 'test_helper'

class StartMale200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male200mt = start_male200mts(:one)
  end

  test "should get index" do
    get start_male200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male200mt_url
    assert_response :success
  end

  test "should create start_male200mt" do
    assert_difference('StartMale200mt.count') do
      post start_male200mts_url, params: { start_male200mt: { achievement: @start_male200mt.achievement, an: @start_male200mt.an, athlete: @start_male200mt.athlete, club: @start_male200mt.club, country: @start_male200mt.country, male200mtsHead_id: @start_male200mt.male200mtsHead_id, number: @start_male200mt.number, place: @start_male200mt.place, rail: @start_male200mt.rail, region: @start_male200mt.region } }
    end

    assert_redirected_to start_male200mt_url(StartMale200mt.last)
  end

  test "should show start_male200mt" do
    get start_male200mt_url(@start_male200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male200mt_url(@start_male200mt)
    assert_response :success
  end

  test "should update start_male200mt" do
    patch start_male200mt_url(@start_male200mt), params: { start_male200mt: { achievement: @start_male200mt.achievement, an: @start_male200mt.an, athlete: @start_male200mt.athlete, club: @start_male200mt.club, country: @start_male200mt.country, male200mtsHead_id: @start_male200mt.male200mtsHead_id, number: @start_male200mt.number, place: @start_male200mt.place, rail: @start_male200mt.rail, region: @start_male200mt.region } }
    assert_redirected_to start_male200mt_url(@start_male200mt)
  end

  test "should destroy start_male200mt" do
    assert_difference('StartMale200mt.count', -1) do
      delete start_male200mt_url(@start_male200mt)
    end

    assert_redirected_to start_male200mts_url
  end
end
