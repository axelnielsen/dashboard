require 'test_helper'

class StartFemale400mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female400mt = start_female400mts(:one)
  end

  test "should get index" do
    get start_female400mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female400mt_url
    assert_response :success
  end

  test "should create start_female400mt" do
    assert_difference('StartFemale400mt.count') do
      post start_female400mts_url, params: { start_female400mt: { achievement: @start_female400mt.achievement, an: @start_female400mt.an, athlete: @start_female400mt.athlete, club: @start_female400mt.club, country: @start_female400mt.country, female400mtsHead_id: @start_female400mt.female400mtsHead_id, number: @start_female400mt.number, place: @start_female400mt.place, rail: @start_female400mt.rail, region: @start_female400mt.region } }
    end

    assert_redirected_to start_female400mt_url(StartFemale400mt.last)
  end

  test "should show start_female400mt" do
    get start_female400mt_url(@start_female400mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female400mt_url(@start_female400mt)
    assert_response :success
  end

  test "should update start_female400mt" do
    patch start_female400mt_url(@start_female400mt), params: { start_female400mt: { achievement: @start_female400mt.achievement, an: @start_female400mt.an, athlete: @start_female400mt.athlete, club: @start_female400mt.club, country: @start_female400mt.country, female400mtsHead_id: @start_female400mt.female400mtsHead_id, number: @start_female400mt.number, place: @start_female400mt.place, rail: @start_female400mt.rail, region: @start_female400mt.region } }
    assert_redirected_to start_female400mt_url(@start_female400mt)
  end

  test "should destroy start_female400mt" do
    assert_difference('StartFemale400mt.count', -1) do
      delete start_female400mt_url(@start_female400mt)
    end

    assert_redirected_to start_female400mts_url
  end
end
