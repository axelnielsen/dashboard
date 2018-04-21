require 'test_helper'

class StartMale4x400mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male4x400mt = start_male4x400mts(:one)
  end

  test "should get index" do
    get start_male4x400mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male4x400mt_url
    assert_response :success
  end

  test "should create start_male4x400mt" do
    assert_difference('StartMale4x400mt.count') do
      post start_male4x400mts_url, params: { start_male4x400mt: { achievement: @start_male4x400mt.achievement, an: @start_male4x400mt.an, athlete: @start_male4x400mt.athlete, club: @start_male4x400mt.club, country: @start_male4x400mt.country, male4x400mtStart_id: @start_male4x400mt.male4x400mtStart_id, number: @start_male4x400mt.number, place: @start_male4x400mt.place, rail: @start_male4x400mt.rail, region: @start_male4x400mt.region } }
    end

    assert_redirected_to start_male4x400mt_url(StartMale4x400mt.last)
  end

  test "should show start_male4x400mt" do
    get start_male4x400mt_url(@start_male4x400mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male4x400mt_url(@start_male4x400mt)
    assert_response :success
  end

  test "should update start_male4x400mt" do
    patch start_male4x400mt_url(@start_male4x400mt), params: { start_male4x400mt: { achievement: @start_male4x400mt.achievement, an: @start_male4x400mt.an, athlete: @start_male4x400mt.athlete, club: @start_male4x400mt.club, country: @start_male4x400mt.country, male4x400mtStart_id: @start_male4x400mt.male4x400mtStart_id, number: @start_male4x400mt.number, place: @start_male4x400mt.place, rail: @start_male4x400mt.rail, region: @start_male4x400mt.region } }
    assert_redirected_to start_male4x400mt_url(@start_male4x400mt)
  end

  test "should destroy start_male4x400mt" do
    assert_difference('StartMale4x400mt.count', -1) do
      delete start_male4x400mt_url(@start_male4x400mt)
    end

    assert_redirected_to start_male4x400mts_url
  end
end
