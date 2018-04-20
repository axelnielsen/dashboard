require 'test_helper'

class StartMale8x50mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male8x50mt = start_male8x50mts(:one)
  end

  test "should get index" do
    get start_male8x50mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male8x50mt_url
    assert_response :success
  end

  test "should create start_male8x50mt" do
    assert_difference('StartMale8x50mt.count') do
      post start_male8x50mts_url, params: { start_male8x50mt: { achievement: @start_male8x50mt.achievement, an: @start_male8x50mt.an, athlete: @start_male8x50mt.athlete, club: @start_male8x50mt.club, country: @start_male8x50mt.country, male8x50mtStart_id: @start_male8x50mt.male8x50mtStart_id, number: @start_male8x50mt.number, place: @start_male8x50mt.place, rail: @start_male8x50mt.rail, region: @start_male8x50mt.region } }
    end

    assert_redirected_to start_male8x50mt_url(StartMale8x50mt.last)
  end

  test "should show start_male8x50mt" do
    get start_male8x50mt_url(@start_male8x50mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male8x50mt_url(@start_male8x50mt)
    assert_response :success
  end

  test "should update start_male8x50mt" do
    patch start_male8x50mt_url(@start_male8x50mt), params: { start_male8x50mt: { achievement: @start_male8x50mt.achievement, an: @start_male8x50mt.an, athlete: @start_male8x50mt.athlete, club: @start_male8x50mt.club, country: @start_male8x50mt.country, male8x50mtStart_id: @start_male8x50mt.male8x50mtStart_id, number: @start_male8x50mt.number, place: @start_male8x50mt.place, rail: @start_male8x50mt.rail, region: @start_male8x50mt.region } }
    assert_redirected_to start_male8x50mt_url(@start_male8x50mt)
  end

  test "should destroy start_male8x50mt" do
    assert_difference('StartMale8x50mt.count', -1) do
      delete start_male8x50mt_url(@start_male8x50mt)
    end

    assert_redirected_to start_male8x50mts_url
  end
end
