require 'test_helper'

class StartMaleSenior200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_senior200mt = start_male_senior200mts(:one)
  end

  test "should get index" do
    get start_male_senior200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_senior200mt_url
    assert_response :success
  end

  test "should create start_male_senior200mt" do
    assert_difference('StartMaleSenior200mt.count') do
      post start_male_senior200mts_url, params: { start_male_senior200mt: { achievement: @start_male_senior200mt.achievement, an: @start_male_senior200mt.an, athlete: @start_male_senior200mt.athlete, club: @start_male_senior200mt.club, country: @start_male_senior200mt.country, malesenior200mtStart_id: @start_male_senior200mt.malesenior200mtStart_id, number: @start_male_senior200mt.number, place: @start_male_senior200mt.place, rail: @start_male_senior200mt.rail, region: @start_male_senior200mt.region } }
    end

    assert_redirected_to start_male_senior200mt_url(StartMaleSenior200mt.last)
  end

  test "should show start_male_senior200mt" do
    get start_male_senior200mt_url(@start_male_senior200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_senior200mt_url(@start_male_senior200mt)
    assert_response :success
  end

  test "should update start_male_senior200mt" do
    patch start_male_senior200mt_url(@start_male_senior200mt), params: { start_male_senior200mt: { achievement: @start_male_senior200mt.achievement, an: @start_male_senior200mt.an, athlete: @start_male_senior200mt.athlete, club: @start_male_senior200mt.club, country: @start_male_senior200mt.country, malesenior200mtStart_id: @start_male_senior200mt.malesenior200mtStart_id, number: @start_male_senior200mt.number, place: @start_male_senior200mt.place, rail: @start_male_senior200mt.rail, region: @start_male_senior200mt.region } }
    assert_redirected_to start_male_senior200mt_url(@start_male_senior200mt)
  end

  test "should destroy start_male_senior200mt" do
    assert_difference('StartMaleSenior200mt.count', -1) do
      delete start_male_senior200mt_url(@start_male_senior200mt)
    end

    assert_redirected_to start_male_senior200mts_url
  end
end
