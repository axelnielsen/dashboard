require 'test_helper'

class StartFemale800mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female800mt = start_female800mts(:one)
  end

  test "should get index" do
    get start_female800mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female800mt_url
    assert_response :success
  end

  test "should create start_female800mt" do
    assert_difference('StartFemale800mt.count') do
      post start_female800mts_url, params: { start_female800mt: { achievement: @start_female800mt.achievement, an: @start_female800mt.an, athlete: @start_female800mt.athlete, club: @start_female800mt.club, country: @start_female800mt.country, female800mtStart_id: @start_female800mt.female800mtStart_id, number: @start_female800mt.number, place: @start_female800mt.place, rail: @start_female800mt.rail, region: @start_female800mt.region } }
    end

    assert_redirected_to start_female800mt_url(StartFemale800mt.last)
  end

  test "should show start_female800mt" do
    get start_female800mt_url(@start_female800mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female800mt_url(@start_female800mt)
    assert_response :success
  end

  test "should update start_female800mt" do
    patch start_female800mt_url(@start_female800mt), params: { start_female800mt: { achievement: @start_female800mt.achievement, an: @start_female800mt.an, athlete: @start_female800mt.athlete, club: @start_female800mt.club, country: @start_female800mt.country, female800mtStart_id: @start_female800mt.female800mtStart_id, number: @start_female800mt.number, place: @start_female800mt.place, rail: @start_female800mt.rail, region: @start_female800mt.region } }
    assert_redirected_to start_female800mt_url(@start_female800mt)
  end

  test "should destroy start_female800mt" do
    assert_difference('StartFemale800mt.count', -1) do
      delete start_female800mt_url(@start_female800mt)
    end

    assert_redirected_to start_female800mts_url
  end
end
