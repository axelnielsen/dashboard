require 'test_helper'

class StartFemaleSenior200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_senior200mt = start_female_senior200mts(:one)
  end

  test "should get index" do
    get start_female_senior200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_senior200mt_url
    assert_response :success
  end

  test "should create start_female_senior200mt" do
    assert_difference('StartFemaleSenior200mt.count') do
      post start_female_senior200mts_url, params: { start_female_senior200mt: { achievement: @start_female_senior200mt.achievement, an: @start_female_senior200mt.an, athlete: @start_female_senior200mt.athlete, club: @start_female_senior200mt.club, country: @start_female_senior200mt.country, femalesenior200mtStart_id: @start_female_senior200mt.femalesenior200mtStart_id, number: @start_female_senior200mt.number, place: @start_female_senior200mt.place, rail: @start_female_senior200mt.rail, region: @start_female_senior200mt.region } }
    end

    assert_redirected_to start_female_senior200mt_url(StartFemaleSenior200mt.last)
  end

  test "should show start_female_senior200mt" do
    get start_female_senior200mt_url(@start_female_senior200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_senior200mt_url(@start_female_senior200mt)
    assert_response :success
  end

  test "should update start_female_senior200mt" do
    patch start_female_senior200mt_url(@start_female_senior200mt), params: { start_female_senior200mt: { achievement: @start_female_senior200mt.achievement, an: @start_female_senior200mt.an, athlete: @start_female_senior200mt.athlete, club: @start_female_senior200mt.club, country: @start_female_senior200mt.country, femalesenior200mtStart_id: @start_female_senior200mt.femalesenior200mtStart_id, number: @start_female_senior200mt.number, place: @start_female_senior200mt.place, rail: @start_female_senior200mt.rail, region: @start_female_senior200mt.region } }
    assert_redirected_to start_female_senior200mt_url(@start_female_senior200mt)
  end

  test "should destroy start_female_senior200mt" do
    assert_difference('StartFemaleSenior200mt.count', -1) do
      delete start_female_senior200mt_url(@start_female_senior200mt)
    end

    assert_redirected_to start_female_senior200mts_url
  end
end
