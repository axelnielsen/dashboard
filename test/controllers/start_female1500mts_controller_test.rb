require 'test_helper'

class StartFemale1500mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female1500mt = start_female1500mts(:one)
  end

  test "should get index" do
    get start_female1500mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female1500mt_url
    assert_response :success
  end

  test "should create start_female1500mt" do
    assert_difference('StartFemale1500mt.count') do
      post start_female1500mts_url, params: { start_female1500mt: { achievement: @start_female1500mt.achievement, an: @start_female1500mt.an, athlete: @start_female1500mt.athlete, club: @start_female1500mt.club, country: @start_female1500mt.country, female1500mtsHead_id: @start_female1500mt.female1500mtsHead_id, number: @start_female1500mt.number, place: @start_female1500mt.place, rail: @start_female1500mt.rail, region: @start_female1500mt.region } }
    end

    assert_redirected_to start_female1500mt_url(StartFemale1500mt.last)
  end

  test "should show start_female1500mt" do
    get start_female1500mt_url(@start_female1500mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female1500mt_url(@start_female1500mt)
    assert_response :success
  end

  test "should update start_female1500mt" do
    patch start_female1500mt_url(@start_female1500mt), params: { start_female1500mt: { achievement: @start_female1500mt.achievement, an: @start_female1500mt.an, athlete: @start_female1500mt.athlete, club: @start_female1500mt.club, country: @start_female1500mt.country, female1500mtsHead_id: @start_female1500mt.female1500mtsHead_id, number: @start_female1500mt.number, place: @start_female1500mt.place, rail: @start_female1500mt.rail, region: @start_female1500mt.region } }
    assert_redirected_to start_female1500mt_url(@start_female1500mt)
  end

  test "should destroy start_female1500mt" do
    assert_difference('StartFemale1500mt.count', -1) do
      delete start_female1500mt_url(@start_female1500mt)
    end

    assert_redirected_to start_female1500mts_url
  end
end
