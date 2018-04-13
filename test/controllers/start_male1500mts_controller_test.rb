require 'test_helper'

class StartMale1500mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male1500mt = start_male1500mts(:one)
  end

  test "should get index" do
    get start_male1500mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male1500mt_url
    assert_response :success
  end

  test "should create start_male1500mt" do
    assert_difference('StartMale1500mt.count') do
      post start_male1500mts_url, params: { start_male1500mt: { achievement: @start_male1500mt.achievement, an: @start_male1500mt.an, athlete: @start_male1500mt.athlete, club: @start_male1500mt.club, country: @start_male1500mt.country, male1500mtsHead_id: @start_male1500mt.male1500mtsHead_id, number: @start_male1500mt.number, place: @start_male1500mt.place, rail: @start_male1500mt.rail, region: @start_male1500mt.region } }
    end

    assert_redirected_to start_male1500mt_url(StartMale1500mt.last)
  end

  test "should show start_male1500mt" do
    get start_male1500mt_url(@start_male1500mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male1500mt_url(@start_male1500mt)
    assert_response :success
  end

  test "should update start_male1500mt" do
    patch start_male1500mt_url(@start_male1500mt), params: { start_male1500mt: { achievement: @start_male1500mt.achievement, an: @start_male1500mt.an, athlete: @start_male1500mt.athlete, club: @start_male1500mt.club, country: @start_male1500mt.country, male1500mtsHead_id: @start_male1500mt.male1500mtsHead_id, number: @start_male1500mt.number, place: @start_male1500mt.place, rail: @start_male1500mt.rail, region: @start_male1500mt.region } }
    assert_redirected_to start_male1500mt_url(@start_male1500mt)
  end

  test "should destroy start_male1500mt" do
    assert_difference('StartMale1500mt.count', -1) do
      delete start_male1500mt_url(@start_male1500mt)
    end

    assert_redirected_to start_male1500mts_url
  end
end
