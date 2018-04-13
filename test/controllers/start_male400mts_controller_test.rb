require 'test_helper'

class StartMale400mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male400mt = start_male400mts(:one)
  end

  test "should get index" do
    get start_male400mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male400mt_url
    assert_response :success
  end

  test "should create start_male400mt" do
    assert_difference('StartMale400mt.count') do
      post start_male400mts_url, params: { start_male400mt: { achievement: @start_male400mt.achievement, an: @start_male400mt.an, athlete: @start_male400mt.athlete, club: @start_male400mt.club, country: @start_male400mt.country, male400mtsHead_id: @start_male400mt.male400mtsHead_id, number: @start_male400mt.number, place: @start_male400mt.place, rail: @start_male400mt.rail, region: @start_male400mt.region } }
    end

    assert_redirected_to start_male400mt_url(StartMale400mt.last)
  end

  test "should show start_male400mt" do
    get start_male400mt_url(@start_male400mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male400mt_url(@start_male400mt)
    assert_response :success
  end

  test "should update start_male400mt" do
    patch start_male400mt_url(@start_male400mt), params: { start_male400mt: { achievement: @start_male400mt.achievement, an: @start_male400mt.an, athlete: @start_male400mt.athlete, club: @start_male400mt.club, country: @start_male400mt.country, male400mtsHead_id: @start_male400mt.male400mtsHead_id, number: @start_male400mt.number, place: @start_male400mt.place, rail: @start_male400mt.rail, region: @start_male400mt.region } }
    assert_redirected_to start_male400mt_url(@start_male400mt)
  end

  test "should destroy start_male400mt" do
    assert_difference('StartMale400mt.count', -1) do
      delete start_male400mt_url(@start_male400mt)
    end

    assert_redirected_to start_male400mts_url
  end
end
