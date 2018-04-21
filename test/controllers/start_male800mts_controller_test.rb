require 'test_helper'

class StartMale800mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male800mt = start_male800mts(:one)
  end

  test "should get index" do
    get start_male800mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male800mt_url
    assert_response :success
  end

  test "should create start_male800mt" do
    assert_difference('StartMale800mt.count') do
      post start_male800mts_url, params: { start_male800mt: { achievement: @start_male800mt.achievement, an: @start_male800mt.an, athlete: @start_male800mt.athlete, club: @start_male800mt.club, country: @start_male800mt.country, male800mtStart_id: @start_male800mt.male800mtStart_id, number: @start_male800mt.number, place: @start_male800mt.place, rail: @start_male800mt.rail, region: @start_male800mt.region } }
    end

    assert_redirected_to start_male800mt_url(StartMale800mt.last)
  end

  test "should show start_male800mt" do
    get start_male800mt_url(@start_male800mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male800mt_url(@start_male800mt)
    assert_response :success
  end

  test "should update start_male800mt" do
    patch start_male800mt_url(@start_male800mt), params: { start_male800mt: { achievement: @start_male800mt.achievement, an: @start_male800mt.an, athlete: @start_male800mt.athlete, club: @start_male800mt.club, country: @start_male800mt.country, male800mtStart_id: @start_male800mt.male800mtStart_id, number: @start_male800mt.number, place: @start_male800mt.place, rail: @start_male800mt.rail, region: @start_male800mt.region } }
    assert_redirected_to start_male800mt_url(@start_male800mt)
  end

  test "should destroy start_male800mt" do
    assert_difference('StartMale800mt.count', -1) do
      delete start_male800mt_url(@start_male800mt)
    end

    assert_redirected_to start_male800mts_url
  end
end
