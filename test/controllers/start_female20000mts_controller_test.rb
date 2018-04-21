require 'test_helper'

class StartFemale20000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female20000mt = start_female20000mts(:one)
  end

  test "should get index" do
    get start_female20000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female20000mt_url
    assert_response :success
  end

  test "should create start_female20000mt" do
    assert_difference('StartFemale20000mt.count') do
      post start_female20000mts_url, params: { start_female20000mt: { achievement: @start_female20000mt.achievement, an: @start_female20000mt.an, athlete: @start_female20000mt.athlete, club: @start_female20000mt.club, country: @start_female20000mt.country, female20000mtStart_id: @start_female20000mt.female20000mtStart_id, number: @start_female20000mt.number, place: @start_female20000mt.place, rail: @start_female20000mt.rail, region: @start_female20000mt.region } }
    end

    assert_redirected_to start_female20000mt_url(StartFemale20000mt.last)
  end

  test "should show start_female20000mt" do
    get start_female20000mt_url(@start_female20000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female20000mt_url(@start_female20000mt)
    assert_response :success
  end

  test "should update start_female20000mt" do
    patch start_female20000mt_url(@start_female20000mt), params: { start_female20000mt: { achievement: @start_female20000mt.achievement, an: @start_female20000mt.an, athlete: @start_female20000mt.athlete, club: @start_female20000mt.club, country: @start_female20000mt.country, female20000mtStart_id: @start_female20000mt.female20000mtStart_id, number: @start_female20000mt.number, place: @start_female20000mt.place, rail: @start_female20000mt.rail, region: @start_female20000mt.region } }
    assert_redirected_to start_female20000mt_url(@start_female20000mt)
  end

  test "should destroy start_female20000mt" do
    assert_difference('StartFemale20000mt.count', -1) do
      delete start_female20000mt_url(@start_female20000mt)
    end

    assert_redirected_to start_female20000mts_url
  end
end
